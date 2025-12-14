.class public final Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final rootView:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchHistoryButtonDivider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchHistoryClearAll:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchHistoryClearAllLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchHistoryContainer:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchHistoryHide:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchHistoryHideLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchHistoryItemsView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchHistoryNoItemsView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchHistoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final searchHistoryTitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->rootView:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->searchHistoryButtonDivider:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->searchHistoryClearAll:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->searchHistoryClearAllLayout:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->searchHistoryContainer:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->searchHistoryHide:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->searchHistoryHideLayout:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->searchHistoryItemsView:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->searchHistoryNoItemsView:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->searchHistoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p11, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->searchHistoryTitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b0a8f

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const v0, 0x7f0b0a90

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0b0a91

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    move-object v6, p0

    check-cast v6, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;

    const v0, 0x7f0b0a93

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0b0a94

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0b0a97

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0b0a98

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0b0a99

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_0

    const v0, 0x7f0b0a9a

    invoke-static {v0, p0}, LG5/p;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    if-eqz v12, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;

    move-object v1, p0

    move-object v2, v6

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0e0815

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchHistoryContainerBinding;->rootView:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;

    return-object p0
.end method
