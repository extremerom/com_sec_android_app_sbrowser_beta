.class Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickAccessSearchWindowViewHolder"
.end annotation


# instance fields
.field private final mConcatAdapter:Landroidx/recyclerview/widget/n;

.field private final mListener:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

.field private mQuickAccessAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;

.field private final mRecyclerView:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsRecyclerView;

.field private mSearchHistoryContentsAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;

.field private final mViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModelProvider;->get(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    const v0, 0x7f0b09e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsRecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mRecyclerView:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/n;

    const/4 v2, 0x0

    new-array v3, v2, [Landroidx/recyclerview/widget/u0;

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/n;-><init>([Landroidx/recyclerview/widget/u0;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mListener:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->updateQuickAccess()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->updateSearchHistory()V

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/ItemSpaceDecoration;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/ItemSpaceDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetPenSelectionEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->requestFocusToBottomLayer()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->updateQuickAccess()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->updateSearchHistory()V

    return-void
.end method

.method private initQuickAccessAdapter()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mQuickAccessAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mListener:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mQuickAccessAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;

    return-void
.end method

.method private requestFocusToBottomLayer()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mQuickAccessAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;->requestFocusToBottomLayer()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateQuickAccess()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getQuickAccessVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->initQuickAccessAdapter()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mQuickAccessAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mQuickAccessAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsAdapter;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/n;->e(Landroidx/recyclerview/widget/u0;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSearchHistory()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getSearchHistoryVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mSearchHistoryContentsAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mSearchHistoryContentsAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mSearchHistoryContentsAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->mSearchHistoryContentsAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/n;->e(Landroidx/recyclerview/widget/u0;)V

    :cond_2
    :goto_0
    return-void
.end method
