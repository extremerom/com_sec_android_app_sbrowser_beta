.class public Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;
.super Landroidx/recyclerview/widget/F0;
.source "SourceFile"


# instance fields
.field private mColor:I

.field private mDrawChild:Z

.field private mItemRoundedCorner:Lq/d;

.field private mListRoundedCorner:Lq/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq/d;

    invoke-direct {v0, p1}, Lq/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mListRoundedCorner:Lq/d;

    new-instance v0, Lq/d;

    invoke-direct {v0, p1}, Lq/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mItemRoundedCorner:Lq/d;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mColor:I

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mDrawChild:Z

    return-void
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/F0;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mListRoundedCorner:Lq/d;

    const/16 v0, 0xf

    invoke-virtual {p3, v0}, Lq/d;->d(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mListRoundedCorner:Lq/d;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mColor:I

    invoke-virtual {p3, v0, v1}, Lq/d;->c(II)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mListRoundedCorner:Lq/d;

    iget-object v0, p3, Lq/d;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p3, p1}, Lq/d;->b(Landroid/graphics/Canvas;)V

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mDrawChild:Z

    if-nez p3, :cond_0

    const-string p0, "RoundedItemDecoration"

    const-string p1, "seslOnDispatchDraw : rounded corner is not applied to child"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->getRoundMode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mItemRoundedCorner:Lq/d;

    invoke-virtual {v4, v3}, Lq/d;->d(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mItemRoundedCorner:Lq/d;

    iget v5, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mColor:I

    invoke-virtual {v4, v3, v5}, Lq/d;->c(II)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/view/RoundedItemDecoration;->mItemRoundedCorner:Lq/d;

    invoke-virtual {v3, v2, p1}, Lq/d;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
