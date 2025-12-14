.class public Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;
.implements Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$NotificationSearchObserver;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# instance fields
.field private mActionModeMenu:Landroid/view/Menu;

.field private mActivity:Landroid/app/Activity;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mCancelButton:Landroid/widget/FrameLayout;

.field private mClearSearchHistoryKeyListener:Landroid/view/View$OnKeyListener;

.field private mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

.field private mClearSearchHistoryView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDeleteBottomBarButton:Landroid/widget/LinearLayout;

.field private mEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

.field public mEditorListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mFakeHintText:Landroid/widget/TextView;

.field private mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

.field private mHidingKeyboardHandler:Landroid/os/Handler;

.field private mImgViewClear:Landroid/widget/ImageButton;

.field private mIsItemClicked:Z

.field private mIsSearchViewVisible:Z

.field private mIsShiftPressed:Z

.field private mIsShowingActionMode:Z

.field private mKeyBoardShowRunnable:Ljava/lang/Runnable;

.field private mKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mLocale:Ljava/lang/String;

.field private mMicBtn:Landroid/widget/ImageButton;

.field private mMode:Landroid/view/ActionMode;

.field private mNotiSearchListener:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

.field private mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

.field private mOffsetChangeListener:Lc6/e;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnClickListenerForDeleteAllSearchKeyword:Landroid/view/View$OnClickListener;

.field private mOnClickListenerForDeleteSearchKeywordItem:Landroid/view/View$OnClickListener;

.field private mOnKeywordMainItemClickListener:Landroid/view/View$OnClickListener;

.field mOnScrollListener:Landroidx/recyclerview/widget/O0;

.field private mPlaceholderScrollview:Landroidx/core/widget/NestedScrollView;

.field private mPrevSelectedIndex:I

.field private mProcessSearchDataHandler:Landroid/os/Handler;

.field private mRecentHeaderTextView:Landroid/widget/TextView;

.field private mRunProcessSearchData:Ljava/lang/Runnable;

.field private mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

.field private mSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

.field private mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

.field private mSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;

.field private mSearchKeywordLayout:Landroid/widget/LinearLayout;

.field private mSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSearchLayout:Landroid/view/View;

.field private mSearchListParent:Landroid/widget/LinearLayout;

.field private mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSearchModeView:Landroid/widget/LinearLayout;

.field private mSearchText:Ljava/lang/String;

.field private mSearchView:Landroid/view/View;

.field public mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllCountText:Landroid/widget/TextView;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSelectedDataItems:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemCount:I

.field private mShareBottomBarButton:Landroid/widget/LinearLayout;

.field private mShowingKeyboardHandler:Landroid/os/Handler;

.field public mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllText:Landroid/widget/TextView;

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsItemClicked:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mLayoutDirection:I

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mProcessSearchDataHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShiftPressed:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mPrevSelectedIndex:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedDataItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$1;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mRunProcessSearchData:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$2;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$3;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOnClickListenerForDeleteSearchKeywordItem:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$4;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOnKeywordMainItemClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$5;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mClearSearchHistoryKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$6;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOnClickListenerForDeleteAllSearchKeyword:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$9;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOffsetChangeListener:Lc6/e;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$10;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOnScrollListener:Landroidx/recyclerview/widget/O0;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$11;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$12;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$13;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mKeyBoardShowRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$14;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mEditorListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mProcessSearchDataHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mRunProcessSearchData:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    return-object p0
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    return-object p0
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;

    return-object p0
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic I(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCountText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic J(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    return p0
.end method

.method public static bridge synthetic K(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsItemClicked:Z

    return-void
.end method

.method public static bridge synthetic L(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mPrevSelectedIndex:I

    return-void
.end method

.method public static bridge synthetic M(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic N(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->adjustScreenForKeyboard()V

    return-void
.end method

.method public static bridge synthetic O(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 1

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->clearSearchDataWithDelay(I)V

    return-void
.end method

.method public static bridge synthetic P(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->handleShiftClick(I)V

    return-void
.end method

.method public static bridge synthetic Q(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->hideKeyboardWithDelay(I)V

    return-void
.end method

.method public static bridge synthetic R(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V

    return-void
.end method

.method public static bridge synthetic S(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSearchKeywordListData()V

    return-void
.end method

.method public static bridge synthetic T(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateDB(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->lambda$updateActionbarLayout$6(Landroid/view/View;)V

    return-void
.end method

.method private addSearchKeywordToDBOnEnter()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object v0

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

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordItem;

    invoke-direct {v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordItem;-><init>(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->addSearchKeywordToDB(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordItem;)V

    :cond_0
    return-void
.end method

.method private addSitesSearchListViewDecoration()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->addSitesSearchListViewDecoration(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private adjustScreenForKeyboard()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setNotificationSearchData()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->lambda$executeDelete$3()V

    return-void
.end method

.method private clearSearchDataWithDelay(I)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/a;-><init>(ILjava/lang/Object;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->lambda$selectAll$8()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->lambda$hideKeyboardWithDelay$10()V

    return-void
.end method

.method private executeDelete()Z
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->setHasTransientState(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->onSearchDelete()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSearchData(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->processSearchData(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/c;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSceneAnimation(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi$OnMyTransitionListener;)V

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->lambda$updateActionbarLayout$4()V

    return-void
.end method

.method private finishDeleteMode()V
    .locals 4

    const-string v0, "NotificationSearchBaseUi"

    const-string v1, "Notification finishDeleteMode ++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedDataItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mPrevSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateToolbar(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->hideBottomBar(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showSelectAllCheckBoxAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->updateAppBarInfo(ZI)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    invoke-virtual {v2, v0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->callAdapterFunction(ZZLcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f140289

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f14028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    if-lez p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12005f

    invoke-virtual {v0, v3, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const p0, 0x7f140801

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v2, 0x7f140655

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v0, ", "

    invoke-static {v1, v0, p0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->lambda$hideSoftKeyboard$11()V

    return-void
.end method

.method private handleShiftClick(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mPrevSelectedIndex:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mPrevSelectedIndex:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    :cond_0
    :goto_0
    if-gt v0, p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setCheckByShiftClick(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method private hideKeyboardWithDelay(I)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/a;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/a;-><init>(ILjava/lang/Object;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHidingKeyboardHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHidingKeyboardHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHidingKeyboardHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->lambda$onCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->lambda$clearSearchDataWithDelay$9()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->lambda$updateActionbarLayout$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->lambda$onCreateView$0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$clearSearchDataWithDelay$9()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsItemClicked:Z

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NotificationSearchBaseUi"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$executeDelete$3()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->exitSearchActionMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchModeView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showKeyboard()V

    return-void
.end method

.method private synthetic lambda$hideKeyboardWithDelay$10()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideSoftKeyboard$11()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$0(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->share(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 4

    const-string p1, "NotificationSearchBaseUi"

    const-string v0, "onActionItemClicked for Share"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->getUrlForShare()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x4e20

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isCrownUxAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->finishDeleteMode()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    const p1, 0x1020002

    const v0, 0x7f140dc8

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->executeDelete()Z

    return-void
.end method

.method private synthetic lambda$selectAll$8()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$4()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$5(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSelectAll(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->getSelectedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mPrevSelectedIndex:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$6(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSelectAll(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->getSelectedString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$7(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->onCancelButtonClicked()V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->lambda$updateActionbarLayout$5(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method private onVoiceSearchResult(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->onVoiceSearchResult(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;Landroid/widget/EditText;)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mFakeHintText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mImgViewClear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsItemClicked:Z

    return p0
.end method

.method private setCheckByShiftClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateCheckedItem(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateSelectAllText()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateSelectAllCheckBox()V

    :cond_0
    return-void
.end method

.method private setNotificationSearchData()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSearchData(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->processSearchData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V

    return-void
.end method

.method private setSearchKeywordListAdapter()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;-><init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2, v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->setSearchKeywordListAdapter(Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;->setDisplayList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method private setSearchKeywordListData()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->setSearchKeywordListData(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private setSelectAll(Z)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mPrevSelectedIndex:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->selectAll(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method private setSelectCheckbox(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->setSelectCheckbox(Landroid/view/View;Z)V

    return-void
.end method

.method private showSearchView(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInSearchView(Z)V

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsSearchViewVisible:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, -0x1

    if-eq v0, p2, :cond_1

    :cond_0
    const p2, 0x7f0b0b67

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mImgViewClear:Landroid/widget/ImageButton;

    const p2, 0x7f0b0b85

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mMicBtn:Landroid/widget/ImageButton;

    const p2, 0x7f0b0b6e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    const v0, 0x7f0b04fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mFakeHintText:Landroid/widget/TextView;

    const v0, 0x7f0b0491

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mMicBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mImgViewClear:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2, v2, v3, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->showSearchHelper(Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/EditText;)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsSearchViewVisible:Z

    :cond_1
    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShiftPressed:Z

    return p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method private updateActionbarLayout()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0b65

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCountText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0af8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mCancelButton:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0af9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/notifications/search/b;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/notifications/search/b;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060e10

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mCancelButton:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/notifications/search/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateSelectAllText()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateSelectAllCheckBox()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateToolbar(Z)V

    return-void
.end method

.method private updateDB(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->updateDB(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V

    return-void
.end method

.method private updateToolbar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->updateToolbar(ZLandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mMicBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mNotiSearchListener:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mPrevSelectedIndex:I

    return p0
.end method


# virtual methods
.method public exitSearchActionMode()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->finishDeleteMode()V

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    return-object p0
.end method

.method public getHelper()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    return-object p0
.end method

.method public getNotificationSearchListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mNotiSearchListener:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object p0

    return-object p0
.end method

.method public getSearchData()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    return-object p0
.end method

.method public bridge synthetic getSearchEditTextView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public getSearchEditTextView()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    return-object p0
.end method

.method public getSearchKeywordDeleteOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOnClickListenerForDeleteSearchKeywordItem:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getSearchListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mEditTextData:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedItemCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    return p0
.end method

.method public getSelectedSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedDataItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getSitesSearchController()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    return-object p0
.end method

.method public isSearchResultEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->isSearchResultEmpty()Z

    move-result p0

    return p0
.end method

.method public isShowingActionMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    return p0
.end method

.method public isVoiceSearchAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x68

    if-ne p1, p2, :cond_0

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->onVoiceSearchResult(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->isShowingActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->exitSearchActionMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showKeyboard()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchModeView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->finishDeleteMode()V

    :cond_0
    return-void
.end method

.method public onCancelButtonClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->isShowingActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->exitSearchActionMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showKeyboard()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchModeView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onChange(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;Ljava/lang/Object;)V
    .locals 2

    sget-object p2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;->INSERTED:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$MESSAGES;

    if-ne p1, p2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->isShowingActionMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->exitSearchActionMode()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/notifications/search/a;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setNotificationSearchData()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->getDisplayLanguage(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f140f8e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    const v1, 0x7f0b0b87

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f140548

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    const v1, 0x7f0b0b88

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f140809

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->getDisplayLanguage(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    const v1, 0x7f0b0b80

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showEmptyListViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->addSitesSearchListViewDecoration()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mLayoutDirection:I

    :cond_3
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateActionbarLayout()V

    :cond_4
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->adjustScreenForKeyboard()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mMode:Landroid/view/ActionMode;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActionModeMenu:Landroid/view/Menu;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateActionbarLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showSelectAllCheckBoxAnimation()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    invoke-virtual {p2, v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->callAdapterFunction(ZZLcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;)V

    return p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;

    invoke-direct {p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0e0898

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0e0893

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    invoke-direct {p3, v2, v3, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    invoke-virtual {p3, p2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->init(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/LocaleUtils;->getDisplayLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mLocale:Ljava/lang/String;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p3

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mLayoutDirection:I

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    const v2, 0x7f0b0b80

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    const v2, 0x7f0b0b83

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListParent:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    const v2, 0x7f0b0b7c

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f071303

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    iput p3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput p3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    const v2, 0x7f0b0b7d

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    const v2, 0x7f0b0b79

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mRecentHeaderTextView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    const v2, 0x7f0b0b75

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b01bd

    invoke-virtual {p3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    const v2, 0x7f0b01bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    const v2, 0x7f0b01b5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    const v4, 0x7f0b02ae

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    const v4, 0x7f0b02ad

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mClearSearchHistoryView:Landroid/widget/TextView;

    const v2, 0x7f0e0897

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchView:Landroid/view/View;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0b0b3e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchModeView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchModeView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler;->addObserver(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$NotificationSearchObserver;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchView:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showSearchView(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showKeyboard()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSearchData(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getAppBarLayout(Landroid/app/Activity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOffsetChangeListener:Lc6/e;

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOnClickListenerForDeleteAllSearchKeyword:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mClearSearchHistoryKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0601f5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0712f5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/b;

    const/4 v2, 0x4

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mDeleteBottomBarButton:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/b;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    const p2, 0x7f0b08c9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mPlaceholderScrollview:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mShareBottomBarButton:Landroid/widget/LinearLayout;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140053

    const-string v1, ", "

    invoke-static {p3, v0, p2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1402b1

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOnScrollListener:Landroidx/recyclerview/widget/O0;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSearchKeywordListData()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showEmptyListViewIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showSearchKeywordListView()V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$7;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$7;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$8;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi$8;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    return-object p0
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSelectAll(Z)V

    :cond_0
    return-void
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->executeDelete()Z

    return-void
.end method

.method public onCtrlAndMKeyPressed()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->finishDeleteMode()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOffsetChangeListener:Lc6/e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lc6/e;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsItemClicked:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mProcessSearchDataHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mRunProcessSearchData:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler;->removeObserver(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler$NotificationSearchObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v2, v1, v0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setNotificationSearchFragment(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setIsInSearchView(Z)V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->onDestroyActionMode(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public onEnterPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->addSearchKeywordToDBOnEnter()V

    return-void
.end method

.method public onOffsetChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->onOffsetChanged(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->hideSoftKeyboard()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showKeyboard()V

    :cond_1
    return-void
.end method

.method public onSearchDelete()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedDataItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public onShiftPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShiftPressed:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-direct {p1, p2, v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;-><init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->addSitesSearchListViewDecoration()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->setSearchListTouchListener()V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;-><init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mNotiSearchListener:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSearchKeywordListAdapter()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->adjustScreenForKeyboard()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mNotiSearchListener:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->setSeslLongPressMultiSelectionListener()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mNotiSearchListener:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotiSearchListener;->setSPenMultiSelectionListener()V

    return-void
.end method

.method public processSearchData()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showEmptyListViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->setResultList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getNotificationSearchListSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;->setSize(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->selectAll(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateSelectAllCheckBox()V

    :cond_1
    return-void
.end method

.method public processSearchData(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->processSearchData(Ljava/lang/String;)V

    return-void
.end method

.method public requestFocus()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListParent:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->requestFocusAndSetSelectionForSearchList(I)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_1
    return v2
.end method

.method public requestFocusAndSetSelection(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchKeywordAdapter;->setFocusOnListItem(I)V

    return-void
.end method

.method public requestFocusAndSetSelectionForSearchList(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public selectAll(Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedDataItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->setChecked(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSelectCheckbox(Landroid/view/View;Z)V

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedDataItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedDataItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    :cond_3
    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateSelectAllText()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setHeightToShift(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->setHeightToShift(Landroid/view/View;I)V

    return-void
.end method

.method public setKeyBoardInputModeToAdjustResize(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    return-void
.end method

.method public setKeywordMainItemClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mOnKeywordMainItemClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setPrevSelectedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mPrevSelectedIndex:I

    return-void
.end method

.method public setSceneAnimation(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi$OnMyTransitionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->setSceneAnimation(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi$OnMyTransitionListener;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public setSearchData(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->setSearchData(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;)V

    return-void
.end method

.method public setSelectedItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    return-void
.end method

.method public setSitesSearchController(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    return-void
.end method

.method public setSpenSelectedSearchResultList(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedDataItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public setTouchActionDowned(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->setTouchActionDowned(Z)V

    return-void
.end method

.method public showEmptyListViewIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->showEmptyListViewIfNeeded(Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;)V

    return-void
.end method

.method public showKeyboard()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mShowingKeyboardHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mShowingKeyboardHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mShowingKeyboardHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mKeyBoardShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showSearchKeywordListView()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSearchKeywordListData()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSearchKeywordListAdapter()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListParent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    const v2, 0x7f0b0b86

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->isSearchKeywordListEmpty(Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    move-result v0

    const/4 v2, 0x0

    const v3, 0x7f0b0b6d

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchKeywordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchLayout:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showSelectAllCheckBoxAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->showSelectAllCheckBoxAnimation(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public startActionModeWithSelection(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;)V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedDataItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->startDeleteMode()V

    const/16 p1, 0x12c

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->hideKeyboardWithDelay(I)V

    return-void
.end method

.method public startDeleteMode()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->updateActionbarLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->showSelectAllCheckBoxAnimation()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchAdapter:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;

    invoke-virtual {v1, v2, v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->callAdapterFunction(ZZLcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchAdapter;)V

    return-void
.end method

.method public updateCheckedItem(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;->setChecked(Z)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedDataItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedDataItems:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    xor-int/lit8 p1, v0, 0x1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->setSelectCheckbox(Landroid/view/View;Z)V

    return-void
.end method

.method public updateSearchKeywordHeader()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mRecentHeaderTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mRecentHeaderTextView:Landroid/widget/TextView;

    const-string v3, ", "

    invoke-static {v2, v1, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v4, 0x7f14058d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1402f1

    invoke-static {v2, v4, v1, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1402b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mClearSearchHistoryView:Landroid/widget/TextView;

    const v1, 0x7f0800a0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mClearSearchHistoryView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0601bc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public updateSelectAllCheckBox()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateSelectAllText()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSearchData:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectAllCountText:Landroid/widget/TextView;

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->updateSelectAllText(Ljava/lang/Boolean;ILandroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchData;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mHelper:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mIsShowingActionMode:Z

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->mSelectedItemCount:I

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->updateAppBarInfo(ZI)V

    return-void
.end method
