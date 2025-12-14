.class public Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;,
        Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SuggestionLayoutManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;

.field private mSearchSuggestionList:Landroidx/recyclerview/widget/RecyclerView;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071411

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mSearchSuggestionList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mSearchSuggestionList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    new-instance p4, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$1;

    invoke-direct {p4, p0, p3, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;Landroid/view/View;I)V

    invoke-virtual {p3, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->getItemCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getItemCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;I)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e08bb

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b0d66

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mTheme:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f060c07

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0b0aa5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f060c05

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f140dea

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f14058d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const p2, 0x7f0b09e0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mSearchSuggestionList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SuggestionLayoutManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SuggestionLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    invoke-virtual {p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    invoke-virtual {p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mSearchSuggestionList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mSearchSuggestionList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetPenSelectionEnabled(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mSearchSuggestionList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/c;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setFirstSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->setFirstSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mTheme:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;->mRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->setTheme(I)V

    return-void
.end method
