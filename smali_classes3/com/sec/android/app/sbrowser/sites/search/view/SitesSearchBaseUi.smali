.class Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;
.super Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

.field private mBottomBarLayout:Landroid/widget/LinearLayout;

.field private final mDragList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEditClicked:Z

.field private mFolderCount:I

.field private mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

.field private mIsFirstLongPressIndex:I

.field private mIsFolderContainsBookmark:Z

.field private mIsItemClicked:Z

.field private mIsShiftPressed:Z

.field private mLayoutDirection:I

.field private mNoItemView:Landroid/view/View;

.field private mNoOfQuickAccess:I

.field private mNoRecentItemView:Landroid/view/View;

.field private mNonEditableSelectedItemCount:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnClickListenerForDeleteSearchKeywordItem:Landroid/view/View$OnClickListener;

.field private mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnKeywordMainItemClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPlaceholder:Landroid/view/View;

.field private mPlaceholderScrollview:Landroidx/core/widget/NestedScrollView;

.field private mPrevSelectedIndex:I

.field private mSPenSelectionEndIndex:I

.field private mSPenSelectionStartIndex:I

.field private mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedFolderItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemCount:I

.field private mSelectedSearchItemList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimilarResultText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

.field private mSimilarResultView:Landroid/widget/LinearLayout;

.field private mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

.field private mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

.field private mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

.field private mSitesSearchContextMenu:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

.field private mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

.field private mSitesSearchHeaderLayout2:Landroid/widget/RelativeLayout;

.field private mSitesSearchHeaderTextView2:Landroid/widget/TextView;

.field private mSitesSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

.field private mSitesSearchKeywordLayout:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

.field private mSitesSearchLayout:Landroid/view/View;

.field private mSitesSearchListParent:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNonEditableSelectedItemCount:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsItemClicked:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mLayoutDirection:I

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mPrevSelectedIndex:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsFirstLongPressIndex:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsShiftPressed:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedSearchItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsFolderContainsBookmark:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mDragList:Ljava/util/ArrayList;

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoOfQuickAccess:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mEditClicked:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$1;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$2;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$3;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$4;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mOnClickListenerForDeleteSearchKeywordItem:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$5;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mOnKeywordMainItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedSearchItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    return-object p0
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    return-object p0
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    return-object p0
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchContextMenu:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    return-object p0
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    return-object p0
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    return-object p0
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordLayout:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    return-object p0
.end method

.method public static bridge synthetic I(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic J(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    return-void
.end method

.method public static bridge synthetic K(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsFirstLongPressIndex:I

    return-void
.end method

.method public static bridge synthetic L(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsItemClicked:Z

    return-void
.end method

.method public static bridge synthetic M(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNonEditableSelectedItemCount:I

    return-void
.end method

.method public static bridge synthetic N(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mPrevSelectedIndex:I

    return-void
.end method

.method public static bridge synthetic O(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSPenSelectionEndIndex:I

    return-void
.end method

.method public static bridge synthetic P(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSPenSelectionStartIndex:I

    return-void
.end method

.method public static bridge synthetic Q(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    return-void
.end method

.method public static bridge synthetic R(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 1

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->clearSearchDataWithDelay(I)V

    return-void
.end method

.method public static bridge synthetic S(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->handleShiftClick(I)V

    return-void
.end method

.method public static bridge synthetic T(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->hideKeyboardWithDelay(I)V

    return-void
.end method

.method public static bridge synthetic U(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isLastView(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic V(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isNonShareableItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic W(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setNoOfQuickAccess(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    return-void
.end method

.method public static bridge synthetic X(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSearchKeywordListData()V

    return-void
.end method

.method public static bridge synthetic Y(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->shareUrls(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic Z(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->startActionModeWithSelection(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    return-void
.end method

.method public static bridge synthetic a0(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->startDeleteMode()V

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    return p1
.end method

.method public static synthetic access$1100(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$1502(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    return p1
.end method

.method public static synthetic access$1600(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$1700(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1800(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$1900(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;II)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;II)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b0(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->updateCheckedItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/View;Z)V

    return-void
.end method

.method private clearSearchDataWithDelay(I)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/search/view/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/a;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->lambda$onCreateView$3()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->lambda$onCreateView$4(Landroid/view/View;)V

    return-void
.end method

.method private executeDelete()V
    .locals 4

    const-string v0, "SitesSearchBaseUi"

    const-string v1, "executeDelete()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->delete()V

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    int-to-long v0, p0

    const-string p0, "313"

    const-string v2, "3129"

    const-string v3, "Selection"

    invoke-static {p0, v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->lambda$onCreateView$0(Ljava/lang/String;)V

    return-void
.end method

.method private finishDeleteMode()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateToolbar(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsFolderContainsBookmark:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedSearchItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoOfQuickAccess:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNonEditableSelectedItemCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mPrevSelectedIndex:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071354

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->clearSitesSearchDeleteStatus()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideBottomBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->showCheckBox(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->startCheckBoxAnimation(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->adjustScreenForKeyboard()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onUpdateInformativeAppBarInfo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hidePreviouslyShowingDialog()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->lambda$onCreateView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method private handleNoItemViewHeight(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoItemView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoRecentItemView:Landroid/view/View;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->handleNoItemViewHeight(ILandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private handleShiftClick(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mPrevSelectedIndex:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mPrevSelectedIndex:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    :cond_0
    :goto_0
    if-gt v0, p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setCheckByShiftClick(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method private hideKeyboardWithDelay(I)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/search/view/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/a;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->lambda$clearSearchDataWithDelay$7()V

    return-void
.end method

.method private isLastView(I)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->getItemCount()I

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

.method private isNonShareableItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isNonShareableItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result p0

    return p0
.end method

.method private isSearchKeywordListEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private isSearchResultsEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private isSelectedFolderContainBookmark(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/collect/I;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne p1, v1, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->lambda$hideKeyboardWithDelay$8()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->lambda$onCreateView$2()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->lambda$selectAll$6()V

    return-void
.end method

.method private synthetic lambda$clearSearchDataWithDelay$7()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->clearSearchData()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsItemClicked:Z

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SitesSearchBaseUi"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$hideKeyboardWithDelay$8()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchEditTextView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->share(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 4

    const-string p1, "SitesSearchBaseUi"

    const-string v0, "onActionItemClicked for Share"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    int-to-long v0, p1

    const-string p1, "313"

    const-string v2, "3128"

    invoke-static {p1, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->getUrlForShare()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x4e20

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/search/view/c;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/c;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isCrownUxAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->finishDeleteMode()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->showSavePageShareTooManyUrlsSnackbar(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$2()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->exitSearchActionMode()V

    return-void
.end method

.method private synthetic lambda$onCreateView$3()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mEditClicked:Z

    return-void
.end method

.method private synthetic lambda$onCreateView$4(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mEditClicked:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mEditClicked:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->openEditBookmarkActivity()Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/a;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getEditButton()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/a;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onCreateView$5(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->showDeleteConfirmDialog()V

    return-void
.end method

.method private synthetic lambda$selectAll$6()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mDragList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    return p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsFirstLongPressIndex:I

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsItemClicked:Z

    return p0
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsShiftPressed:Z

    return p0
.end method

.method private setCheckByShiftClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->updateCheckedItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/View;Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isNonShareableItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setNoOfQuickAccess(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllCheckBox()V

    :cond_1
    return-void
.end method

.method private setNoOfQuickAccess(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoOfQuickAccess:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoOfQuickAccess:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoOfQuickAccess:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoOfQuickAccess:I

    :goto_0
    return-void
.end method

.method private setSPenMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string p0, "SitesSearchBaseUi"

    const-string v0, "[SPenSelect] SitesSearchListView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$6;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method

.method private setSearchKeywordListAdapter()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;-><init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSearchKeywordListAdapter: mSearchKeywordItemArrayList size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SitesSearchBaseUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->setDisplayList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesLayoutManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordLayout:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->getKeywordScrollListener()Landroidx/recyclerview/widget/O0;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->getKeywordItemTouchListener()Landroidx/recyclerview/widget/N0;

    move-result-object p0

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->setSearchKeywordListAdapter(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;Landroidx/recyclerview/widget/O0;Landroidx/recyclerview/widget/N0;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->setDisplayList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method private setSearchKeywordListData()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchKeywordsList(Z)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private setSeslLongPressMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$10;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void
.end method

.method private shareUrls(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x4e20

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->share(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->showSavePageShareTooManyUrlsSnackbar(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private startActionModeWithSelection(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v1, v2, :cond_0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isEditable()Z

    move-result v1

    if-nez v1, :cond_1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNonEditableSelectedItemCount:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->setSitesSearchDeleteStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setChecked(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedSearchItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isNonShareableItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setNoOfQuickAccess(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->startDeleteMode()V

    const/16 p1, 0x12c

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->hideKeyboardWithDelay(I)V

    return-void
.end method

.method private startDeleteMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateActionbarLayout()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onUpdateInformativeAppBarInfo()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->showSelectAllCheckBoxAnimation(Landroid/widget/CheckBox;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->showCheckBox(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->startCheckBoxAnimation(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->showBottomBar()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNonEditableSelectedItemCount:I

    return p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mPrevSelectedIndex:I

    return p0
.end method

.method private updateCheckedItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/view/View;Z)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setChecked(Z)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    add-int/2addr v1, v4

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v1, v4, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedSearchItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedSearchItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isEditable()Z

    move-result v1

    if-nez v1, :cond_5

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNonEditableSelectedItemCount:I

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    add-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNonEditableSelectedItemCount:I

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object p1

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->setSitesSearchDeleteStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)V

    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->setSelectCheckbox(Landroid/view/View;ZZ)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSPenSelectionEndIndex:I

    return p0
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSPenSelectionStartIndex:I

    return p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    return p0
.end method


# virtual methods
.method public addSearchKeywordToDBOnEnter()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchEditTextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result v5

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getCurrentTab()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;-><init>(Ljava/lang/String;JII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->addSearchKeywordToDB(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;)V

    :cond_0
    return-void
.end method

.method public adjustScreenForKeyboard()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSearchDataNull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->adjustScreenForKeyboard(Landroid/app/Activity;Z)V

    return-void
.end method

.method public callNotifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1d

    const/4 v3, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0x42

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setCtrlKeyPressed(Z)V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setCtrlKeyPressed(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setCtrlKeyPressed(Z)V

    :cond_1
    :goto_0
    return v2

    :pswitch_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->showDeleteConfirmDialog()V

    return v3

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsShiftPressed:Z

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_a

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsShiftPressed:Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->addSearchKeywordToDBOnEnter()V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->showDeleteConfirmDialog()V

    return v3

    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->setSelectAll(Z)V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->handleDpadRight(Z)V

    :cond_a
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public enableBottomBarButtons(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->setEnabled(Z)V

    return-void
.end method

.method public exitSearchActionMode()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->finishDeleteMode()V

    :cond_0
    return-void
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getListType()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getOnCreateContextMenuListener()Landroid/view/View$OnCreateContextMenuListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-object p0
.end method

.method public getOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method public getSearchKeywordDeleteOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mOnClickListenerForDeleteSearchKeywordItem:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getSelectedItemCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    return p0
.end method

.method public getSelectedSearchItemList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedSearchItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public isActionModeShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public isFolderSelected()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public isShowingActionMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->handleNoItemViewHeight(I)V

    return-void
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->finishDeleteMode()V

    :cond_0
    return-void
.end method

.method public onCancelButtonClicked()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->exitSearchActionMode()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p0, "SitesSearchBaseUi"

    const-string p1, "[onConfigurationChanged] SitesSearchLayout is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setRecentHeaderLayout()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const v1, 0x7f0b0b80

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->showEmptyListViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mLayoutDirection:I

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateFastScrollerStatus(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->handleNoItemViewHeight(I)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateActionbarLayout()V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mLayoutDirection:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e0898

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const p2, 0x7f0b0b77

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchHeaderTextView2:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const p2, 0x7f0b0b75

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchHeaderLayout2:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const p2, 0x7f0b0b80

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const p2, 0x7f0b0b83

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchListParent:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const p2, 0x7f0b0b8c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSimilarResultView:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const p2, 0x7f0b0b8b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSimilarResultText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const p2, 0x7f0b0b7c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordLayout:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$8;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->onCreateView(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout$Listener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordLayout:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$9;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$9;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setRecentHeaderLayout()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    const p2, 0x7f0b01bd

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->initializeBottomBar()Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0b01bb

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBarLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const v1, 0x7f0b047f

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarMarginView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBarLayout:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2, p3}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const v1, 0x7f0b08c8

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mPlaceholder:Landroid/view/View;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const v1, 0x7f0b08c9

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/core/widget/NestedScrollView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mPlaceholderScrollview:Landroidx/core/widget/NestedScrollView;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mPlaceholder:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mPlaceholderScrollview:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p3, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const v1, 0x7f0b0b87

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060bd3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const v1, 0x7f0b0b88

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0609cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSimilarResultView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchHeaderTextView2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060be1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mPlaceholder:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060bd4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSimilarResultText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v3, 0x7f060beb

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchListParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const v1, 0x7f0b0b86

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoItemView:Landroid/view/View;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    const v1, 0x7f0b0b6d

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoRecentItemView:Landroid/view/View;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getShareButton()Landroid/widget/LinearLayout;

    move-result-object p3

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/search/view/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/b;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getEditButton()Landroid/widget/LinearLayout;

    move-result-object p3

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/search/view/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/b;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object p3

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/search/view/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/b;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->getScrollListener()Landroidx/recyclerview/widget/O0;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchEditTextView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSearchKeywordListData()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->showSearchKeywordListView()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    return-object p0
.end method

.method public onDeleteButtonClicked()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->executeDelete()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SitesSearchBaseUi"

    const-string v1, " onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsItemClicked:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hideSoftKeyboard()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->showKeyboard()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onUpdateInformativeAppBarInfo()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onUpdateInformativeAppBarInfo()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-direct {p1, p2, v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;-><init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateFastScrollerStatus(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetSmoothScrollEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSearchKeywordListAdapter()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->adjustScreenForKeyboard()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSeslLongPressMultiSelectionListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSPenMultiSelectionListener()V

    return-void
.end method

.method public performItemTouchAction()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSearchActionModeMenuVisibility(Z)V

    return-void
.end method

.method public processSearchData(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSimilarResultText:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->adjustScreenForKeyboard()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->showEmptyListViewIfNeeded()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->setResultList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/Q0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/Q0;->a()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->adjustScreenForKeyboard()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onUpdateInformativeAppBarInfo()V

    return-void
.end method

.method public requestFocus()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchListParent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordLayout:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->requestFocus(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;)Z

    move-result p0

    return p0
.end method

.method public requestFocusAndSetSelection(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordLayout:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->requestFocusSitesSearchKeywordListView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordAdapter;->setFocusOnListItem(I)V

    return-void
.end method

.method public resetIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mPrevSelectedIndex:I

    return-void
.end method

.method public selectAll(Z)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNonEditableSelectedItemCount:I

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedSearchItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_a

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    if-nez v5, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isNonShareableItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz p1, :cond_2

    iget v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoOfQuickAccess:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoOfQuickAccess:I

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez p1, :cond_3

    iget v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoOfQuickAccess:I

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoOfQuickAccess:I

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v6}, Lcom/sec/android/app/sbrowser/sites/common/bookmark/BookmarkCommonQueryUtil;->isNonEditableBookmarkFolder(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz p1, :cond_4

    move v7, v4

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->setChecked(Z)V

    if-nez v6, :cond_6

    if-eqz p1, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedSearchItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedSearchItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchAdapter:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;

    if-nez v7, :cond_7

    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    invoke-virtual {v7, v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchAdapter;->getItemAt(I)Landroid/view/View;

    move-result-object v7

    :goto_4
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    if-nez v6, :cond_8

    if-eqz p1, :cond_8

    move v6, v4

    goto :goto_5

    :cond_8
    move v6, v1

    :goto_5
    invoke-virtual {v8, v7, v6, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->setSelectCheckbox(Landroid/view/View;ZZ)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isEditable()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNonEditableSelectedItemCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNonEditableSelectedItemCount:I

    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getNonEditableBookmarkFolderCount()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_7

    :cond_b
    move v2, v1

    :goto_7
    iput v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    if-eqz p1, :cond_d

    :goto_8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getBookmarkType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v2, v3, :cond_c

    iget v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->selectAllSearchDelete(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllText()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/a;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;I)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->setActionModeTitleAlpha(F)V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$7;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi$7;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p3, p2, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;-><init>(Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu$SitesSearchContextMenuDelegate;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchContextMenu:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchContextMenu;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    sget-object p3, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SEARCH:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;-><init>(Landroid/app/Activity;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-direct {p1, p2, p0, p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    return-void
.end method

.method public setHeightToShift(Landroid/view/View;Z)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setHeightToShift(Landroid/view/View;Z)V

    return-void
.end method

.method public setKeywordMainItemClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mOnKeywordMainItemClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setRecentHeaderLayout()V
    .locals 2

    const-string v0, "SitesSearchBaseUi"

    const-string v1, "setRecentHeaderLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordLayout:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->setRecentHeaderLayout()V

    return-void
.end method

.method public setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V

    return-void
.end method

.method public setSearchActionModeMenuVisibility(Z)V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBarLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->getListType()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isFolderSelected()Z

    move-result v7

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    if-nez v5, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->isFolderContainBookmark(J)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNonEditableSelectedItemCount:I

    if-lez v1, :cond_4

    iget v8, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    sub-int/2addr v8, v1

    if-nez v8, :cond_4

    move v8, v2

    goto :goto_2

    :cond_4
    move v8, v4

    :goto_2
    if-eq v1, v4, :cond_5

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    if-le v1, v4, :cond_6

    :cond_5
    move v0, v2

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    iget v9, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoOfQuickAccess:I

    move v2, p1

    move v4, v6

    move v6, v0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->setSearchActionModeMenuVisibility(ZZZZZZZI)V

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->showBottomBar()V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideBottomBar()V

    :cond_8
    :goto_3
    return-void
.end method

.method public setSitesSearchController(Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    return-void
.end method

.method public showDeleteConfirmDialog()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isSelectedFolderContainBookmark(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsFolderContainsBookmark:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move v5, v1

    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedFolderItems:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, ""

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    if-ne v2, v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14027d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_5
    :goto_4
    iget v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNonEditableSelectedItemCount:I

    if-lez v2, :cond_6

    iget v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    sub-int/2addr v6, v2

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    move v1, v5

    :goto_5
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->getListType()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    iget v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mFolderCount:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mIsFolderContainsBookmark:Z

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v2, v5, p0, v4}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->getDeleteMessageForBookmarkDialog(IIZZ)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->showConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityListener:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->getDeleteMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->showConfirmDialog(Ljava/lang/String;)V

    :cond_8
    :goto_6
    return-void
.end method

.method public showEmptyListViewIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordLayout:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchListParent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoRecentItemView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoItemView:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchListParent:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isSearchResultsEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoItemView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isSearchResultsEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public showSearchKeywordListView()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSearchKeywordListData()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSearchKeywordListAdapter()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchListParent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchLayout:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordLayout:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showSearchKeyword : size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SitesSearchBaseUi"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordLayout:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isSearchKeywordListEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mNoRecentItemView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isSearchKeywordListEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public stopScrollOnClear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/J0;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public updatHeader()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchHeaderTextView2:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchHeaderLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateHeader(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    :cond_0
    return-void
.end method

.method public updateBottomBar()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSearchActionModeMenuVisibility(Z)V

    return-void
.end method

.method public updateBottomBarDeleteButton()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSearchDataNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSelectedItemCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getNonEditableBookmarkFolderCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->setDeleteText(Z)V

    return-void
.end method

.method public updateSearchKeywordHeader()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isSearchKeywordListEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->mSitesSearchKeywordLayout:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->updateSearchKeywordHeader()V

    :cond_0
    return-void
.end method
