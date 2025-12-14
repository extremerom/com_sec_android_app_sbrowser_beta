.class public Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$SettingLayoutManager;,
        Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$SettingSearchKeywordItemDecoration;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClearSearchHistoryKeyListener:Landroid/view/View$OnKeyListener;

.field private mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

.field private mClearSearchHistoryView:Landroid/widget/TextView;

.field private mExpandList:Landroidx/recyclerview/widget/RecyclerView;

.field private mFallbackTextView:Landroid/widget/TextView;

.field private mItemTouchListener:Landroidx/recyclerview/widget/N0;

.field private mItemTouchListenerKeywordList:Landroidx/recyclerview/widget/N0;

.field private mLayoutDirection:I

.field private mNoItemView:Landroid/view/View;

.field private mNoRecentItemView:Landroid/view/View;

.field private mOnClickListenerForDeleteAllSearchKeyword:Landroid/view/View$OnClickListener;

.field private mOnClickListenerForDeleteSearchKeywordItem:Landroid/view/View$OnClickListener;

.field private mOnKeywordMainItemClickListener:Landroid/view/View$OnClickListener;

.field private mOnScrollListener:Landroidx/recyclerview/widget/O0;

.field mOnScrollListenerKeywordList:Landroidx/recyclerview/widget/O0;

.field private mRecentHeaderTextView:Landroid/widget/TextView;

.field private mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingActivityListener:Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

.field private mSettingSearchAdapter:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

.field private mSettingSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

.field private mSettingSearchKeywordLayout:Landroid/widget/LinearLayout;

.field private mSettingSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSettingSearchLayout:Landroid/view/View;

.field private mSettingSearchListParent:Landroid/widget/LinearLayout;

.field private mSettingsActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mLayoutDirection:I

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$3;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mOnScrollListener:Landroidx/recyclerview/widget/O0;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$4;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$6;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mOnClickListenerForDeleteAllSearchKeyword:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$7;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mClearSearchHistoryKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$8;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mItemTouchListenerKeywordList:Landroidx/recyclerview/widget/N0;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$9;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mOnScrollListenerKeywordList:Landroidx/recyclerview/widget/O0;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$13;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mOnKeywordMainItemClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$14;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mOnClickListenerForDeleteSearchKeywordItem:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private addListItemsDecoration(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->getRoundedCornerColor()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoItemView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoRecentItemView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingActivityListener:Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private getRoundedCornerColor()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const v0, 0x7f060e1e

    goto :goto_0

    :cond_0
    const v0, 0x7f060e26

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private getScrollListener()Landroidx/recyclerview/widget/O0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mOnScrollListener:Landroidx/recyclerview/widget/O0;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->handleDeleteAllKeywordList()V

    return-void
.end method

.method private handleDeleteAllKeywordList()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$12;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoRecentItemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private handleNoItemViewHeight(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-lez p1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoItemView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoRecentItemView:Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoRecentItemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v3, :cond_4

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p1, v3, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    if-lez p1, :cond_5

    move v3, p1

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p1, :cond_6

    goto :goto_3

    :cond_6
    move p1, v1

    :goto_3
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoItemView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$10;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$10;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoRecentItemView:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$11;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$11;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_4
    return-void
.end method

.method private hideKeyboardWithList()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lf1/P;->a(Landroid/view/View;)Lf1/w0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lf1/w0;->a:Lf1/u0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lf1/u0;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingActivityListener:Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->hideKeyboardWithList()Z

    move-result p0

    return p0
.end method

.method private initKeywordLayout()V
    .locals 2

    const-string v0, "SettingSearchView"

    const-string v1, "initKeywordLayout: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const v1, 0x7f0b0b22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const v1, 0x7f0b0b21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$5;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->setRecentHeaderLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingActivityListener:Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->setSearchKeywordListData()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->showSearchKeywordListView()V

    :cond_0
    return-void
.end method

.method private isSearchKeywordListEmpty()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isSearchResultsEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingActivityListener:Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;->getSettingSearchData()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->getResultList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->setSearchKeywordListData()V

    return-void
.end method

.method private setSearchKeywordListAdapter()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;-><init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;->setDisplayList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$SettingLayoutManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$SettingLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$SettingSearchKeywordItemDecoration;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$SettingSearchKeywordItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mOnScrollListenerKeywordList:Landroidx/recyclerview/widget/O0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mItemTouchListenerKeywordList:Landroidx/recyclerview/widget/N0;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;->setDisplayList(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method private setSearchKeywordListData()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->getSearchKeywordsList(Z)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSearchKeywordItemArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateFastScrollerStatus(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$2;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEventListener(Landroidx/recyclerview/widget/W0;)V

    return-void
.end method


# virtual methods
.method public adjustScreenForKeyboard()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->supportPopOverOptions()Z

    move-result v0

    const/16 v1, 0x30

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingActivityListener:Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;->getSettingSearchData()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingActivityListener:Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;->getSettingSearchData()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->getResultList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_1
    return-void
.end method

.method public getSearchKeywordDeleteOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mOnClickListenerForDeleteSearchKeywordItem:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public hideFallBackText()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mFallbackTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->handleNoItemViewHeight(I)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p0, "SettingSearchView"

    const-string p1, "[onConfigurationChanged] SettingSearchLayout is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->setRecentHeaderLayout()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const v1, 0x7f0b0b25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->showEmptyListViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchAdapter:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->getRoundedCornerColor()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchAdapter:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mLayoutDirection:I

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->updateFastScrollerStatus(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->handleNoItemViewHeight(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->updateSearchKeywordHeader()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0e0887

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const p2, 0x7f0b0b27

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchListParent:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mLayoutDirection:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const p2, 0x7f0b0b2c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mFallbackTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const p2, 0x7f0b0b29

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoItemView:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const p2, 0x7f0b0b1a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoRecentItemView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingActivityListener:Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;->getSettingSearchData()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->clearResultList()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingActivityListener:Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;->getSettingSearchData()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->clearResultList()V

    return-void
.end method

.method public onLanguageChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->handleDeleteAllKeywordList()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingsActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->hideSoftKeyboard()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingsActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->showKeyboard()V

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchAdapter:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    move-object p2, p1

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingsActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingActivityListener:Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;->getSettingSearchData()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchAdapter:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->getResultList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->getGroupedHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->setListData(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchAdapter:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->getGroupCount()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->setGroupCount(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const p2, 0x7f0b0b25

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchAdapter:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchAdapter:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView$1;-><init>(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->setOnItemClick(Lsb/k;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->addListItemsDecoration(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->getScrollListener()Landroidx/recyclerview/widget/O0;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetSmoothScrollEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->updateFastScrollerStatus(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoItemView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoRecentItemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->initKeywordLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->updateLayoutIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->adjustScreenForKeyboard()V

    return-void
.end method

.method public requestFocus()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchListParent:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->requestFocusAndSetSelectionForSearchList(I)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_1
    return v2
.end method

.method public requestFocusAndSetSelection(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;->setFocusOnListItem(I)V

    return-void
.end method

.method public requestFocusAndSetSelectionForSearchList(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public resetKeywordAdapter()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordAdapter:Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordAdapter;

    return-void
.end method

.method public setKeywordMainItemClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mOnKeywordMainItemClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setNestedScroll(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(I)Z

    :goto_0
    return-void
.end method

.method public setRecentHeaderLayout()V
    .locals 7

    const-string v0, "SettingSearchView"

    const-string v1, "setRecentHeaderLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const v4, 0x7f0b0b15

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const v5, 0x7f0b0b14

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEasyModeForSystemWindow()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_2

    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const v2, 0x7f0b0b1f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mRecentHeaderTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const v2, 0x7f0b02b2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const v2, 0x7f0b02b0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mClearSearchHistoryView:Landroid/widget/TextView;

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const v2, 0x7f0b0b1e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mRecentHeaderTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const v2, 0x7f0b02b1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    const v2, 0x7f0b02af

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mClearSearchHistoryView:Landroid/widget/TextView;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableStandardViewMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071389

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mRecentHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mRecentHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mOnClickListenerForDeleteAllSearchKeyword:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mClearSearchHistoryKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public settingSearchKeywordVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public settingSearchListParentVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchListParent:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showEmptyListViewIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchListParent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoRecentItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchListParent:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->isSearchResultsEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoItemView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->isSearchResultsEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public showFallBackText()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mFallbackTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showSearchKeywordListView()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->setSearchKeywordListData()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->setSearchKeywordListAdapter()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchListParent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->isSearchKeywordListEmpty()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoRecentItemView:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->isSearchKeywordListEmpty()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public updateLayoutIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const v1, 0x7f071303

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getLayoutMargin(Landroid/content/Context;)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableStandardViewMode(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollBarStyle(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchKeywordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public updateSearchKeywordHeader()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->isSearchKeywordListEmpty()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mRecentHeaderTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mRecentHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    const v4, 0x7f14058d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mClearSearchHistoryMainLayout:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1402f1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1402b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mClearSearchHistoryView:Landroid/widget/TextView;

    const v1, 0x7f0800a0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mClearSearchHistoryView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0601bc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public updateSearchResultList()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingActivityListener:Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;->getSettingSearchData()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->getResultList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoItemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mNoRecentItemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchAdapter:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->getResultList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->getGroupedHashMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->setListData(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchAdapter:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->getGroupCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->setGroupCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mExpandList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/Q0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/Q0;->a()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->mSettingSearchAdapter:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchView;->adjustScreenForKeyboard()V

    return-void
.end method
