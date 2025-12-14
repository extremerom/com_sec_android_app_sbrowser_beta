.class public Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;


# instance fields
.field private final mBrowsingDataListAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mDataLakeSuggestionAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;

.field private mDirectSearchAdapter:Lcom/sec/android/app/sbrowser/suggestion_list/DirectSearchListAdapter;

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mListView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;

.field private final mMergeAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;

.field private final mPreloadedDomainAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/PreloadedDomainAdapter;

.field private mQuery:Ljava/lang/String;

.field private final mRichEntityAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/RichEntityAdapter;

.field private mScaleAnimator:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;

.field private final mSearchSuggestionAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;

.field mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

.field private final mSuggestionListItemDecoration:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mSuggestionListItemDecoration:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/RichEntityAdapter;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/RichEntityAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mRichEntityAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/RichEntityAdapter;

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/PreloadedDomainAdapter;

    invoke-direct {v1, p1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/PreloadedDomainAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mPreloadedDomainAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/PreloadedDomainAdapter;

    new-instance v2, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;

    invoke-direct {v2, p1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mSearchSuggestionAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;

    new-instance v3, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;

    invoke-direct {v3, p1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mBrowsingDataListAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;

    new-instance v4, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;

    invoke-direct {v4, p1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mDataLakeSuggestionAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;

    new-instance v5, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;

    invoke-direct {v5}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mMergeAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;

    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/RichEntityConfig;->getInstance()Lcom/sec/android/app/sbrowser/global_config/RichEntityConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/global_config/RichEntityConfig;->getRichEntityPosition()I

    move-result v6

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchConstants;->isDirectSearchSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Lcom/sec/android/app/sbrowser/suggestion_list/DirectSearchListAdapter;

    invoke-direct {v7, p1}, Lcom/sec/android/app/sbrowser/suggestion_list/DirectSearchListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mDirectSearchAdapter:Lcom/sec/android/app/sbrowser/suggestion_list/DirectSearchListAdapter;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->addAdapter(Landroidx/recyclerview/widget/u0;)V

    add-int/lit8 v6, v6, 0x1

    :cond_0
    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->addAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {v5, v2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->addAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->addAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->addAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {v5, v6, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->addAdapter(ILandroidx/recyclerview/widget/u0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->setSuggestionListView(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;)V

    return-void
.end method

.method private initializeListView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mListView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mListView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mListView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mMergeAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mListView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mSuggestionListItemDecoration:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    new-instance v0, LZ3/x;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/lifecycle/l0;->h(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0, v1}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mMergeAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isFromWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mListView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mScaleAnimator:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mListView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mScaleAnimator:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mScaleAnimator:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/ScaleAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method private notifyNewThemeChanged(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mContext:Landroid/content/Context;

    const v1, 0x7f060d50

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mContext:Landroid/content/Context;

    const v2, 0x7f060d55

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mContext:Landroid/content/Context;

    const v2, 0x7f060d54

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mContext:Landroid/content/Context;

    const v2, 0x7f060d53

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mBrowsingDataListAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;->setTheme(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mSearchSuggestionAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->setTheme(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mRichEntityAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/RichEntityAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->setTheme(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mPreloadedDomainAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/PreloadedDomainAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->setTheme(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mDataLakeSuggestionAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->setTheme(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mMergeAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter;->setTheme(I)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->notifyBackgroundColorChanged(I)V

    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method public isReverseLayout()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyBackgroundColorChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mListView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mSuggestionListItemDecoration:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->setRoundedCornerColor(I)V

    return-void
.end method

.method public notifyThemeChanged(I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->notifyNewThemeChanged(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mContext:Landroid/content/Context;

    const v1, 0x7f060989

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mContext:Landroid/content/Context;

    const v1, 0x7f060d54

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mContext:Landroid/content/Context;

    const v1, 0x7f060d53

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mContext:Landroid/content/Context;

    const v1, 0x7f060c0c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mBrowsingDataListAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;->setTheme(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mSearchSuggestionAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->setTheme(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mRichEntityAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/RichEntityAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->setTheme(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mPreloadedDomainAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/PreloadedDomainAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->setTheme(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mDataLakeSuggestionAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->setTheme(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->notifyBackgroundColorChanged(I)V

    return-void
.end method

.method public setData(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->setSuggestionCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mPreloadedDomainAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/PreloadedDomainAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mDataLakeSuggestionAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/DataLakeSuggestionAdapter;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mBrowsingDataListAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;->setData(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->setSuggestionCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mRichEntityAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/RichEntityAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mPreloadedDomainAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/PreloadedDomainAdapter;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListAdapter;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mSearchSuggestionAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mBrowsingDataListAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;

    invoke-virtual {p1, p4}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/BrowsingDataListAdapter;->setData(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->notifyDataSetChanged()V

    return-void
.end method

.method public setFirstSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mSearchSuggestionAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->setFirstSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->notifyDataSetChanged()V

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mQuery:Ljava/lang/String;

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method public setSuggestionListView(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->mListView:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListRecyclerView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListView;->initializeListView()V

    return-void
.end method
