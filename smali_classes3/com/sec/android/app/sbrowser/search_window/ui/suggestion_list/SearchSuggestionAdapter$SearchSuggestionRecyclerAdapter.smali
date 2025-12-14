.class Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchSuggestionRecyclerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;

.field private final mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

.field private final mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mSuggestions:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;

    new-instance p2, LZ3/x;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/l0;->h(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/y0;

    invoke-direct {p2, p1}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class p1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {p2, p1}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    new-instance v7, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getSuggestionCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getType()Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion$TerraceOmniboxSuggestionType;->nativeType()I

    move-result v5

    const-string v6, "keyword_suggestion"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->onSuggestionItemSelected(Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;)V

    const-string p0, "201"

    const-string p1, "8341"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;I)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mTheme:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;->mKeyword:Landroid/widget/TextView;

    const v1, 0x7f08071b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;->mKeyword:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060c0f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;->mKeyword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;->mKeyword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->e:F

    :cond_2
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;->mKeyword:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;->getQuery()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f06027e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/TextHighlightUtil;->setHighlightedText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;->mKeyword:Landroid/widget/TextView;

    const-string v2, ", "

    invoke-static {v0, v2}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f140dea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;->mKeyword:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;->mKeyword:Landroid/widget/TextView;

    new-instance p2, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/d;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/d;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0e08ba

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public setFirstSuggestion(Lcom/sec/terrace/browser/omnibox/TerraceOmniboxSuggestion;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->setData(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mSuggestions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SearchSuggestionAdapter$SearchSuggestionRecyclerAdapter;->mTheme:I

    return-void
.end method
