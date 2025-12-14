.class public Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;
.super Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;
.implements Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;
    }
.end annotation


# instance fields
.field private mActionModeType:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

.field private mActivity:Landroid/app/Activity;

.field private mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

.field private mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

.field private mByPassActionMode:Z

.field private mChange:Z

.field private mCloudSyncOn:Z

.field private mContainer:Landroid/view/ViewGroup;

.field private mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

.field private mIsFirstLongPressIndex:I

.field private mIsLongPressDragging:Z

.field private mIsNewConfig:Z

.field private mIsShiftPressed:Z

.field private mLayoutDirection:I

.field private mNoItemLayout:Landroid/view/View;

.field private mNoItemSubText:Landroid/widget/TextView;

.field private mNoItemText:Landroid/widget/TextView;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPenDragEndIndex:I

.field private mPenDragStartIndex:I

.field private mPrevSelectedIndex:I

.field private final mSPenDragItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

.field private mSavedPageContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;

.field private mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

.field private mSavedPageImageFetcher:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

.field private mSavedPageMainLayout:Landroid/widget/LinearLayout;

.field private mSavedPageMainLayoutView:Landroid/view/View;

.field private mSelectedItemCount:I

.field private mSyncNoticeLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsNewConfig:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mByPassActionMode:Z

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->NONE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActionModeType:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mLayoutDirection:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSPenDragItems:Ljava/util/ArrayList;

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsFirstLongPressIndex:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPrevSelectedIndex:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsLongPressDragging:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsShiftPressed:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mChange:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$1;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;II)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;II)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public static synthetic access$802(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    return p1
.end method

.method public static synthetic access$900(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideSearchViewWithDelay()V

    return-void
.end method

.method private checkSyncNoticeShowCondition()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSavedPageListEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getShowUnsyncedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mCloudSyncOn:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->lambda$initializeList$3(Landroid/view/View;)V

    return-void
.end method

.method private deleteSavedpageItem(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;

    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->deleteSavedpageItem(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->lambda$initializeList$2(Landroid/view/View;)V

    return-void
.end method

.method private executeDelete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->isSavedPageDeleteRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->showConfirmDialog()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->lambda$notifyDataSetChanged$1()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->lambda$setOnMenuItemClickListener$0(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->lambda$initSyncNotice$5()V

    return-void
.end method

.method private handleCancelled()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->finishActionMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->dismissProgress()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->setSavedPageDeleteRunning(Z)V

    return-void
.end method

.method private handleChange()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->createSavedPageItemList(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->showEmptyListViewIfNeeded()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->finishActionMode()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setOptionMenuVisibility(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->selectAllSavedPageItems(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateBottomBar()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->notifyDataSetChanged()V

    return-void
.end method

.method private handleDeleted()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->finishActionMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->dismissProgress()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateInstances()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->showEmptyListViewIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateInformativeAppBarInfo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->setSavedPageDeleteRunning(Z)V

    return-void
.end method

.method private handleDpadDown(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isFocusedOnToolbar()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSavedPageListEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return v0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isSelectAllCheckFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private handleInserted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->createSavedPageItemList(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->showEmptyListViewIfNeeded()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->finishActionMode()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setOptionMenuVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateInformativeAppBarInfo()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->notifyDataSetChanged()V

    return-void
.end method

.method private handleShiftClick(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPrevSelectedIndex:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPrevSelectedIndex:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    :cond_0
    :goto_0
    if-gt v0, p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setCheckByShiftClick(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->lambda$initSyncNotice$4()V

    return-void
.end method

.method private initSyncNotice()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/d;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initializeList()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsNewConfig:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideBottomBar()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageMainLayoutView:Landroid/view/View;

    const v1, 0x7f0b0a66

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageMainLayoutView:Landroid/view/View;

    const v1, 0x7f0b0a5a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageMainLayoutView:Landroid/view/View;

    const v1, 0x7f0b0a58

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageMainLayoutView:Landroid/view/View;

    const v1, 0x7f0b0a53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemSubText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageMainLayoutView:Landroid/view/View;

    const v1, 0x7f0b0a59

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageMainLayoutView:Landroid/view/View;

    const v1, 0x7f0b020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSyncNoticeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060bd3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsNewConfig:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->initializeBottomBar()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b01bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageMainLayoutView:Landroid/view/View;

    const v4, 0x7f0b047f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarMarginView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    if-nez v4, :cond_2

    new-instance v4, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-direct {v4, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getShareButton()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/b;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/b;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateBottomBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setSeslMultiSelectedListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setLongPressMultiSelectionListener()V

    return-void
.end method

.method private isLastView(I)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getItemCount()I

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

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsFirstLongPressIndex:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPenDragEndIndex:I

    return p0
.end method

.method private synthetic lambda$initSyncNotice$4()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSyncNoticeLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->checkSyncNoticeShowCondition()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSyncNoticeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSyncNoticeText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSyncNoticeTextColor(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSyncNoticeLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initSyncNotice$5()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->updateShowUnsyncedIcon()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/d;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/d;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initializeList$2(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->share()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isCrownUxAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->onFinishDeleteMode()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializeList$3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->showConfirmDialog()V

    return-void
.end method

.method private synthetic lambda$notifyDataSetChanged$1()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$setOnMenuItemClickListener$0(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;->share(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    goto :goto_0

    :sswitch_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getContentUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->openInSecretMode(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;->openInNewWindow(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    goto :goto_0

    :sswitch_3
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->deleteSavedpageItem(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->showConfirmDialog()V

    goto :goto_0

    :sswitch_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;->openInNewTab(Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :sswitch_data_0
    .sparse-switch
        0x7f0b030e -> :sswitch_4
        0x7f0b033b -> :sswitch_3
        0x7f0b0355 -> :sswitch_2
        0x7f0b0357 -> :sswitch_1
        0x7f0b0367 -> :sswitch_0
    .end sparse-switch
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPenDragStartIndex:I

    return p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSPenDragItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    return-object p0
.end method

.method private onFinishDeleteMode()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->displaySelectModeUI(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->NONE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActionModeType:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setIsActionBarShown(Z)V

    :cond_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mOptionsMenu:Landroid/view/Menu;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->setSearchMenuEnabled(ZLandroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSavedPageListEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setOptionMenuVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->resetCheckedState()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071354

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isProgressBarShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->clearSavedPageDeleteList()V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPrevSelectedIndex:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSyncNoticeTextColor(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->showSyncNoticeText()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideBottomBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->notifyDataSetChanged()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->startCheckBoxAnimation(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mByPassActionMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setActionModeByPass(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hidePreviouslyShowingDialog()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateInformativeAppBarInfo()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsFirstLongPressIndex:I

    return-void
.end method

.method private resetCheckedState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->resetCheckedState(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;)V

    return-void
.end method

.method private resetScrollPositionIfNecessary()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sLastClickedSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getSavedPageItemPos(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sLastClickedSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsLongPressDragging:Z

    return-void
.end method

.method private sendSALoggingForClickEvent(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "3065"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getIsSynced()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[sendSALoggingForClickEvent] isSynced : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SavedPageBaseUi"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    const-string p1, "Sync"

    goto :goto_0

    :cond_1
    const-string p1, "Local"

    :goto_0
    const-string v0, "3104"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setCheckByShiftClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    :cond_0
    return-void
.end method

.method private setCheckItem(ZLcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Landroid/widget/CheckBox;)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setChecked(Z)V

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    add-int/2addr p2, p1

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    return-void
.end method

.method private setLongPressMultiSelectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    return-void
.end method

.method private setOnMenuItemClickListener(Landroid/view/MenuItem;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/c;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/c;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private setSelectionForFirstItem(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setChecked(Z)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->startActionMode(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;)V

    return-void
.end method

.method private setSeslMultiSelectedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$2;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method

.method private shouldShowInformativeAppBar()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->shouldShowInformativeAppBar(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;)Z

    move-result p0

    return p0
.end method

.method private showConfirmDialog()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12004c

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->showConfirmDialog(Ljava/lang/String;)V

    return-void
.end method

.method private showSyncNoticeText()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSyncNoticeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->checkSyncNoticeShowCondition()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startActionMode(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActionModeType:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->startDeleteMode()V

    return-void
.end method

.method private startDeleteMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "3226"

    goto :goto_0

    :cond_0
    const-string v1, "3105"

    :goto_0
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mOptionsMenu:Landroid/view/Menu;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->setSearchMenuEnabled(ZLandroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->displaySelectModeUI(Z)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mByPassActionMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setIsActionBarShown(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setActionModeByPass(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateActionbarLayout()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateBottomBar()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->showSelectAllCheckBoxAnimation(Landroid/widget/CheckBox;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSelectAllText()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->notifyDataSetChanged()V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->startCheckBoxAnimation(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSyncNoticeTextColor(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateInformativeAppBarInfo()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPenDragEndIndex:I

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPenDragStartIndex:I

    return-void
.end method

.method private updateInstances()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->createSavedPageItemList(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->showEmptyListViewIfNeeded()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mChange:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mChange:Z

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method private updateMainLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0809

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageMainLayoutView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->initializeList()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->notifyDataSetChanged()V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->startActionMode(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;)V

    return-void
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;I)V
    .locals 2

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const p3, 0x7f10001f

    invoke-virtual {p2, p3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, p3

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    move-result-object p4

    if-nez p4, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p2, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const v1, 0x7f0b0357

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    const v1, 0x7f0b030e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    xor-int/2addr p2, v0

    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const p2, 0x7f0b0355

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p2

    :goto_1
    if-ge p3, p2, :cond_5

    invoke-interface {p1, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setOnMenuItemClickListener(Landroid/view/MenuItem;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public dismissProgress()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->dismissProgress()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->clearSavedPageDeleteList()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getToolbarBackButton()Landroid/widget/ImageButton;

    move-result-object v1

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_4

    const/16 v2, 0x20

    if-eq v0, v2, :cond_3

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatchKeyEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not handled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SavedPageBaseUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setCtrlKeyPressed(Z)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setCtrlKeyPressed(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setCtrlKeyPressed(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->executeDelete()Z

    move-result p0

    return p0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->handleDpadLeftRight(Landroid/view/KeyEvent;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    return v4

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->handleDpadDown(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v4

    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSavedPageListEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsShiftPressed:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_5

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsShiftPressed:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->executeDelete()Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->selectAllSavedPageItems(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateBottomBar()V

    :cond_5
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mOptionsMenu:Landroid/view/Menu;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSavedPageListEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->openOptionsMenu()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public enableBottomBarButtons(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->setEnabled(Z)V

    return-void
.end method

.method public finishActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hidePreviouslyShowingDialog()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->onFinishDeleteMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentTabInformativeSubTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getCurrentTabInformativeSubTitle(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getCurrentTabInformativeTitle(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;Ljava/lang/Boolean;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFirstVisiblePosition()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public getLastVisiblePosition()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method public getSavedPageImageFetcher()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageImageFetcher:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    return-object p0
.end method

.method public getSavedPageListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "310"

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz p0, :cond_1

    const-string p0, "307"

    return-object p0

    :cond_1
    const-string p0, "306"

    return-object p0
.end method

.method public getSelectedItemCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    return p0
.end method

.method public handleOnClickForSearchItem(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->onSavedPageClick(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    return-void
.end method

.method public isSavedPageListEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->isItemsEmpty()Z

    move-result p0

    return p0
.end method

.method public isSelectAllSavedPageList()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/d;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAppBarHeightChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemLayout:Landroid/view/View;

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->finishActionMode()V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hideSearchView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSavedPageListEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setOptionMenuVisibility(Z)V

    return v2

    :cond_2
    return v1
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

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->finishActionMode()V

    :cond_0
    return-void
.end method

.method public onCancelButtonClicked()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->finishActionMode()V

    return-void
.end method

.method public onChange(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SavedPage onChange :: messages = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SavedPageBaseUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$4;->$SwitchMap$com$sec$android$app$sbrowser$sites$savedpage$model$SavedPageMessageHandler$MESSAGES:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->handleCancelled()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->handleDeleted()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result p0

    if-le p0, v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/utils/SavedPageUtils;->sendDeletedMessage()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->handleChange()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->handleInserted()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->sendInsertedMessage()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SavedPageBaseUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateActionbarLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSelectAllText()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsNewConfig:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateMainLayout()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemSubText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f140dc6

    goto :goto_0

    :cond_2
    const v1, 0x7f140dbe

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->showEmptyListViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_3
    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mLayoutDirection:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->initializeList()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->notifyDataSetChanged()V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSelectAllSavedPageList()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->setDeleteText(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->resetViewHeights(Landroid/view/View;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f10001e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mOptionsMenu:Landroid/view/Menu;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    const v0, 0x7f0b0b8a

    invoke-interface {p2, v0, p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->setColorForActionBarIcon(ILandroid/view/Menu;)V

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f140f8f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setOptionMenuVisibility(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0809

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageMainLayoutView:Landroid/view/View;

    new-instance p3, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {p3, v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mContainer:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->createSavedPageItemList(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mLayoutDirection:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCloudSyncAutomatically()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mCloudSyncOn:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->addObserver(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->initializeList()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->showEmptyListViewIfNeeded()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const-string p2, "3225"

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const-string p2, "0023"

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->initSyncNotice()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSavedPageVisitCountPerDay(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageMainLayoutView:Landroid/view/View;

    return-object p0
.end method

.method public onDeleteButtonClicked()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->enableBottomBarButtons(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->executeSavedPageDeleteTask(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mByPassActionMode:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setActionModeByPass(Z)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->isAnimationStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->onDestroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    :cond_3
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageMainLayoutView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->onDestroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mOptionsMenu:Landroid/view/Menu;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActionModeType:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSyncNoticeLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageImageFetcher:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;->clearCache()V

    :cond_4
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageImageFetcher:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->removeObserver(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDialogDismissed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mByPassActionMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->resetCheckedState()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->notifyDataSetChanged()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mByPassActionMode:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setActionModeByPass(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "SavedPage onItemClick : isLongPressDragging = "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsLongPressDragging:Z

    const-string p5, "SavedPageBaseUi"

    invoke-static {p5, p1, p4}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsLongPressDragging:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const p4, 0x7f0b0b66

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    iget-boolean p5, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    const/4 v0, 0x0

    if-eqz p5, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isChecked()Z

    move-result p5

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsShiftPressed:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPrevSelectedIndex:I

    if-ne p1, v2, :cond_2

    iget p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    if-nez p1, :cond_2

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPrevSelectedIndex:I

    :cond_2
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->handleShiftClick(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p5, p1, p4}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setCheckItem(ZLcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Landroid/widget/CheckBox;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSPenDragItems:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSPenDragItems:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsLongPressDragging:Z

    iput v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsFirstLongPressIndex:I

    :goto_0
    if-eqz p5, :cond_5

    iput v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPrevSelectedIndex:I

    goto :goto_1

    :cond_5
    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPrevSelectedIndex:I

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSelectAllSavedPageList()Z

    move-result p5

    invoke-virtual {p1, p5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isLastView(I)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setHeightToShift(Landroid/view/View;Z)V

    goto :goto_2

    :cond_6
    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mHeightToShift:I

    :goto_2
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mTouchActionDowned:Z

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateBottomBar()V

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSelectAllText()V

    goto :goto_3

    :cond_8
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsShiftPressed:Z

    if-nez p2, :cond_9

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->onSavedPageClick(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    goto :goto_3

    :cond_9
    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsFirstLongPressIndex:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPrevSelectedIndex:I

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->handleShiftClick(I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPrevSelectedIndex:I

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->ALL:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->startActionMode(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideSearchViewWithDelay()V

    :goto_3
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const-string v0, "SavedPageBaseUi"

    const-string v1, "SavedPage onItemLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mIsFirstLongPressIndex:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isLastView(I)Z

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setHeightToShift(Landroid/view/View;Z)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v3

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p1, p4}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setLongPressDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPrevSelectedIndex:I

    sget-object p1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->ALL:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setSelectionForFirstItem(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideSearchViewWithDelay()V

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SavedPage onOptionsItemSelected :: id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SavedPageBaseUi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_5

    const v0, 0x7f0b0a54

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b0b8a

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setOptionMenuVisibility(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_4

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mByPassActionMode:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->setActionModeByPass(Z)V

    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setChecked(Z)V

    iget v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->showConfirmDialog()V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->DELETE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->startActionMode(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->hideSearchView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSavedPageListEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setOptionMenuVisibility(Z)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateInformativeAppBarInfo()V

    return-void
.end method

.method public onSavedPageClick(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 6

    const-string v0, "SavedPageBaseUi"

    const-string v1, "SavedPage onSavedPageClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->sendSALoggingForClickEvent(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getContentUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getDirPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-interface {v4, v5}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "path"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isReadingItem"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isReaderPage()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isNightMode"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "url"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    sput-object p1, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sLastClickedSavedPageItem:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->onSearchDelete(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->executeSavedPageDeleteTask(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/savedpage/model/BaseSavedPageUi;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-direct {p1, p2, v0, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;-><init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    xor-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mNestedOnScrollListener:Landroidx/recyclerview/widget/O0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->addListItemsDecoration(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillHorizontalPaddingEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->resetScrollPositionIfNecessary()V

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageImageFetcher:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageImageFetcher;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->shouldShowInformativeAppBar()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateInformativeAppBarInfo()V

    return-void
.end method

.method public performItemTouchAction()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateBottomBar()V

    return-void
.end method

.method public resetIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mPrevSelectedIndex:I

    return-void
.end method

.method public selectAllSavedPageItems(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/utils/SavedPageUtils;->setSelectCheckbox(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->clearSavedPageDeleteList()V

    if-nez p1, :cond_1

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSelectAllText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageAdapter:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->setActionModeTitleAlpha(F)V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageContextMenuDelegate:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;

    return-void
.end method

.method public setHeightToShift(Landroid/view/View;Z)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setHeightToShift(Landroid/view/View;Z)V

    return-void
.end method

.method public setOnChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mChange:Z

    return-void
.end method

.method public setOptionMenuVisibility(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mOptionsMenu:Landroid/view/Menu;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mIsShowingActionMode:Z

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->setOptionMenuVisibility(ZLandroid/view/Menu;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;Z)V

    return-void
.end method

.method public setSavedPageController(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    return-void
.end method

.method public setSceneTransition(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V

    return-void
.end method

.method public setViewForNewConfig(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public showEmptyListViewIfNeeded()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSavedPageListEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSyncNoticeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemSubText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f140dc5

    goto :goto_0

    :cond_0
    const v3, 0x7f140dbe

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemSubText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060259

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemSubText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v2, 0x7f140dc0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->setNoLayoutStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setOptionMenuVisibility(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mNoItemSubText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->setNoLayoutStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;Z)V

    :goto_1
    return-void
.end method

.method public showProgress()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->showProgress(I)V

    return-void
.end method

.method public updateBottomBar()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getDeleteButton()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActionModeType:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->SHARE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->getShareButton()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActionModeType:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;->DELETE:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$ActionModeType;

    if-ne v1, v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mSelectedItemCount:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mByPassActionMode:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->showBottomBar()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->hideBottomBar()V

    :goto_1
    return-void
.end method

.method public updateDeleteButton()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mBottomBar:Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSelectAllSavedPageList()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/SitesBottomBar;->setDeleteText(Z)V

    return-void
.end method

.method public updateInformativeAppBarInfo()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onUpdateInformativeAppBarInfo()V

    :cond_0
    return-void
.end method
