.class public Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;
.super Landroidx/recyclerview/widget/F0;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;

.field private final mItemRoundedCorner:Lq/d;

.field private mRoundedCornerColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mDelegate:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mRoundedCornerColor:I

    new-instance p2, Lq/d;

    invoke-direct {p2, p1}, Lq/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mItemRoundedCorner:Lq/d;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/d1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/F0;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/u0;->getItemId(I)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mDelegate:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;->isReverseLayout()Z

    move-result p2

    const p3, 0x7f0713ff

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    :goto_0
    return-void
.end method

.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/F0;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mDelegate:Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/search_window/model/suggestion_list/SuggestionListDelegate;->isReverseLayout()Z

    move-result p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mItemRoundedCorner:Lq/d;

    iget v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mRoundedCornerColor:I

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lq/d;->c(II)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_6

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v5

    instance-of v6, v5, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;

    if-eqz v6, :cond_5

    check-cast v5, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/MergeAdapter$ViewHolder;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->getRoundMode()I

    move-result v5

    const/16 v6, 0xc

    const/4 v7, 0x3

    if-eq v5, v7, :cond_3

    if-eq v5, v6, :cond_1

    if-eq v5, v2, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mItemRoundedCorner:Lq/d;

    invoke-virtual {v5, v1}, Lq/d;->d(I)V

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mItemRoundedCorner:Lq/d;

    invoke-virtual {v5, v2}, Lq/d;->d(I)V

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mItemRoundedCorner:Lq/d;

    if-eqz p3, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {v5, v6}, Lq/d;->d(I)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mItemRoundedCorner:Lq/d;

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    move v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Lq/d;->d(I)V

    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mItemRoundedCorner:Lq/d;

    invoke-virtual {v5, v4, p1}, Lq/d;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public setRoundedCornerColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/suggestion_list/SuggestionListItemDecoration;->mRoundedCornerColor:I

    return-void
.end method
