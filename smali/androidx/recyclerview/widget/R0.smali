.class public final Landroidx/recyclerview/widget/R0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/Q0;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/R0;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/R0;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/R0;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/R0;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/R0;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/R0;->e:I

    iput p1, p0, Landroidx/recyclerview/widget/R0;->f:I

    return-void
.end method

.method public static e(Landroid/view/ViewGroup;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, v1}, Landroidx/recyclerview/widget/R0;->e(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/h1;Z)V
    .locals 5

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/h1;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/R0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/j1;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/j1;->getItemDelegate()Lf1/b;

    move-result-object v2

    instance-of v4, v2, Landroidx/recyclerview/widget/i1;

    if-eqz v4, :cond_0

    check-cast v2, Landroidx/recyclerview/widget/i1;

    iget-object v2, v2, Landroidx/recyclerview/widget/i1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/b;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    :cond_1
    if-eqz p2, :cond_5

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_4

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/u0;->onViewRecycled(Landroidx/recyclerview/widget/h1;)V

    :cond_2
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    if-eqz p2, :cond_3

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/E1;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/E1;->d(Landroidx/recyclerview/widget/h1;)V

    :cond_3
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dispatchViewRecycled: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SeslRecyclerView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object p0, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_5
    :goto_1
    iput-object v3, p1, Landroidx/recyclerview/widget/h1;->mBindingAdapter:Landroidx/recyclerview/widget/u0;

    iput-object v3, p1, Landroidx/recyclerview/widget/h1;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/R0;->d()Landroidx/recyclerview/widget/Q0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getItemViewType()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/Q0;->b(I)Landroidx/recyclerview/widget/P0;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/P0;->a:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/recyclerview/widget/Q0;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/P0;

    iget p0, p0, Landroidx/recyclerview/widget/P0;->b:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gt p0, p2, :cond_6

    iget-object p0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-static {p0}, LG5/N3;->b(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz p0, :cond_8

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "this scrap item already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->resetInternal()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/R0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/R0;->h()V

    return-void
.end method

.method public final c(I)I
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/R0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/d1;->g:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result p0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid position "

    const-string v2, ". State item count is "

    invoke-static {p1, v1, v2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Landroidx/recyclerview/widget/Q0;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/R0;->g:Landroidx/recyclerview/widget/Q0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/Q0;

    invoke-direct {v0}, Landroidx/recyclerview/widget/Q0;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/R0;->g:Landroidx/recyclerview/widget/Q0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/R0;->f()V

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/R0;->g:Landroidx/recyclerview/widget/Q0;

    return-object p0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/R0;->g:Landroidx/recyclerview/widget/Q0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/R0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/R0;->g:Landroidx/recyclerview/widget/Q0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    iget-object p0, p0, Landroidx/recyclerview/widget/Q0;->c:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/u0;Z)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/R0;->g:Landroidx/recyclerview/widget/Q0;

    if-eqz p0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/Q0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/Q0;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/P0;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/P0;->a:Ljava/util/ArrayList;

    move v1, p1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/h1;

    iget-object v2, v2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/h1;

    iget-object v2, v2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-static {v2}, LG5/N3;->b(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/R0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/R0;->i(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/recyclerview/widget/R0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/J;

    iget-object v0, p0, Landroidx/recyclerview/widget/J;->c:[I

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/J;->d:I

    :cond_2
    return-void
.end method

.method public final i(I)V
    .locals 5

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    const-string v1, "SeslRecyclerView"

    if-eqz v0, :cond_0

    const-string v0, "Recycling cached view at index "

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/R0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/h1;

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CachedViewHolder to be recycled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/R0;->a(Landroidx/recyclerview/widget/h1;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/h1;->isTmpDetached()Z

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/R0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/h1;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/h1;->unScrap()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/h1;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/h1;->clearReturnedFromScrapFlag()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/R0;->k(Landroidx/recyclerview/widget/h1;)V

    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/D0;

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/h1;->isRecyclable()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/D0;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/D0;->endAnimation(Landroidx/recyclerview/widget/h1;)V

    :cond_3
    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/h1;)V
    .locals 11

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/recyclerview/widget/R0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_12

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->doesTransientStatePreventRecycling()Z

    move-result v0

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/u0;->onFailedToRecycleView(Landroidx/recyclerview/widget/h1;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    iget-object v6, p0, Landroidx/recyclerview/widget/R0;->c:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cached view received recycle internal? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, LV0/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-nez v4, :cond_6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->isRecyclable()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v1

    goto/16 :goto_9

    :cond_6
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/R0;->f:I

    if-lez v4, :cond_d

    const/16 v4, 0x20e

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/h1;->hasAnyOfTheFlags(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Landroidx/recyclerview/widget/R0;->f:I

    if-lt v4, v5, :cond_7

    if-lez v4, :cond_7

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/R0;->i(I)V

    add-int/lit8 v4, v4, -0x1

    :cond_7
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v5, :cond_c

    if-lez v4, :cond_c

    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/J;

    iget v7, p1, Landroidx/recyclerview/widget/h1;->mPosition:I

    iget-object v8, v5, Landroidx/recyclerview/widget/J;->c:[I

    if-eqz v8, :cond_9

    iget v8, v5, Landroidx/recyclerview/widget/J;->d:I

    mul-int/lit8 v8, v8, 0x2

    move v9, v1

    :goto_3
    if-ge v9, v8, :cond_9

    iget-object v10, v5, Landroidx/recyclerview/widget/J;->c:[I

    aget v10, v10, v9

    if-ne v10, v7, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v9, v9, 0x2

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v4, -0x1

    :goto_4
    if-ltz v4, :cond_b

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/h1;

    iget v5, v5, Landroidx/recyclerview/widget/h1;->mPosition:I

    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/J;

    iget-object v8, v7, Landroidx/recyclerview/widget/J;->c:[I

    if-eqz v8, :cond_b

    iget v8, v7, Landroidx/recyclerview/widget/J;->d:I

    mul-int/lit8 v8, v8, 0x2

    move v9, v1

    :goto_5
    if-ge v9, v8, :cond_b

    iget-object v10, v7, Landroidx/recyclerview/widget/J;->c:[I

    aget v10, v10, v9

    if-ne v10, v5, :cond_a

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v9, v9, 0x2

    goto :goto_5

    :cond_b
    add-int/2addr v4, v2

    :cond_c
    :goto_6
    invoke-virtual {v6, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v4, v2

    goto :goto_7

    :cond_d
    move v4, v1

    :goto_7
    if-nez v4, :cond_e

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/R0;->a(Landroidx/recyclerview/widget/h1;Z)V

    :goto_8
    move v1, v4

    goto :goto_9

    :cond_e
    move v2, v1

    goto :goto_8

    :goto_9
    iget-object p0, v3, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/E1;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/E1;->d(Landroidx/recyclerview/widget/h1;)V

    if-nez v1, :cond_f

    if-nez v2, :cond_f

    if-eqz v0, :cond_f

    iget-object p0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-static {p0}, LG5/N3;->b(Landroid/view/View;)V

    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/recyclerview/widget/h1;->mBindingAdapter:Landroidx/recyclerview/widget/u0;

    iput-object p0, p1, Landroidx/recyclerview/widget/h1;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_f
    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1}, LV0/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, LV0/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->isScrap()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_13

    move v1, v2

    :cond_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/h1;->hasAnyOfTheFlags(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/R0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/h1;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/R0;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/R0;->b:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/h1;->setScrapContainer(Landroidx/recyclerview/widget/R0;Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/R0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, LV0/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/h1;->setScrapContainer(Landroidx/recyclerview/widget/R0;Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/R0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public final m(IJ)Landroidx/recyclerview/widget/h1;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, -0x1

    const/4 v3, 0x1

    iget-object v4, v0, Landroidx/recyclerview/widget/R0;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz v1, :cond_4d

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v5

    if-ge v1, v5, :cond_4d

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    iget-boolean v5, v5, Landroidx/recyclerview/widget/d1;->g:Z

    const/4 v6, 0x0

    const/16 v8, 0x20

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroidx/recyclerview/widget/R0;->b:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    move v9, v6

    :goto_0
    if-ge v9, v5, :cond_2

    iget-object v10, v0, Landroidx/recyclerview/widget/R0;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/h1;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->wasReturnedFromScrap()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->getLayoutPosition()I

    move-result v11

    if-ne v11, v1, :cond_1

    invoke-virtual {v10, v8}, Landroidx/recyclerview/widget/h1;->addFlags(I)V

    goto :goto_3

    :cond_1
    add-int/2addr v9, v3

    goto :goto_0

    :cond_2
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/u0;->hasStableIds()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v9, v1, v6}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result v9

    if-lez v9, :cond_4

    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v10

    if-ge v9, v10, :cond_4

    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/u0;->getItemId(I)J

    move-result-wide v9

    move v11, v6

    :goto_1
    if-ge v11, v5, :cond_4

    iget-object v12, v0, Landroidx/recyclerview/widget/R0;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/h1;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/h1;->wasReturnedFromScrap()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v12}, Landroidx/recyclerview/widget/h1;->getItemId()J

    move-result-wide v13

    cmp-long v13, v13, v9

    if-nez v13, :cond_3

    invoke-virtual {v12, v8}, Landroidx/recyclerview/widget/h1;->addFlags(I)V

    move-object v10, v12

    goto :goto_3

    :cond_3
    add-int/2addr v11, v3

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_5

    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v6

    goto :goto_4

    :cond_6
    move v5, v6

    const/4 v10, 0x0

    :goto_4
    iget-object v9, v0, Landroidx/recyclerview/widget/R0;->c:Ljava/util/ArrayList;

    iget-object v11, v0, Landroidx/recyclerview/widget/R0;->a:Ljava/util/ArrayList;

    const-string v12, "SeslRecyclerView"

    if-nez v10, :cond_1f

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v13, v6

    :goto_5
    if-ge v13, v10, :cond_9

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/h1;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/h1;->wasReturnedFromScrap()Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v14}, Landroidx/recyclerview/widget/h1;->getLayoutPosition()I

    move-result v15

    if-ne v15, v1, :cond_8

    invoke-virtual {v14}, Landroidx/recyclerview/widget/h1;->isInvalid()Z

    move-result v15

    if-nez v15, :cond_8

    iget-object v15, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    iget-boolean v15, v15, Landroidx/recyclerview/widget/d1;->g:Z

    if-nez v15, :cond_7

    invoke-virtual {v14}, Landroidx/recyclerview/widget/h1;->isRemoved()Z

    move-result v15

    if-nez v15, :cond_8

    :cond_7
    invoke-virtual {v14, v8}, Landroidx/recyclerview/widget/h1;->addFlags(I)V

    move-object v10, v14

    goto/16 :goto_b

    :cond_8
    add-int/2addr v13, v3

    goto :goto_5

    :cond_9
    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/k;

    iget-object v10, v10, Landroidx/recyclerview/widget/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v6

    :goto_6
    if-ge v14, v13, :cond_b

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/h1;->getLayoutPosition()I

    move-result v7

    if-ne v7, v1, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/h1;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual/range {v16 .. v16}, Landroidx/recyclerview/widget/h1;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    add-int/2addr v14, v3

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    :goto_7
    if-eqz v15, :cond_11

    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v7

    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/k;

    iget-object v13, v10, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/o0;

    iget-object v13, v13, Landroidx/recyclerview/widget/o0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v13

    if-ltz v13, :cond_10

    iget-object v14, v10, Landroidx/recyclerview/widget/k;->b:LD2/a;

    invoke-virtual {v14, v13}, LD2/a;->d(I)Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-virtual {v14, v13}, LD2/a;->a(I)V

    invoke-virtual {v10, v15}, Landroidx/recyclerview/widget/k;->k(Landroid/view/View;)V

    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/k;

    iget-object v13, v10, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/o0;

    iget-object v13, v13, Landroidx/recyclerview/widget/o0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v13

    if-ne v13, v2, :cond_c

    :goto_8
    move v13, v2

    goto :goto_9

    :cond_c
    iget-object v10, v10, Landroidx/recyclerview/widget/k;->b:LD2/a;

    invoke-virtual {v10, v13}, LD2/a;->d(I)Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v10, v13}, LD2/a;->b(I)I

    move-result v10

    sub-int/2addr v13, v10

    :goto_9
    if-eq v13, v2, :cond_e

    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/k;

    invoke-virtual {v10, v13}, Landroidx/recyclerview/widget/k;->c(I)V

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/R0;->l(Landroid/view/View;)V

    const/16 v10, 0x2020

    invoke-virtual {v7, v10}, Landroidx/recyclerview/widget/h1;->addFlags(I)V

    move-object v10, v7

    goto/16 :goto_b

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1}, LV0/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to unhide a view that was not hidden"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v10, v6

    :goto_a
    if-ge v10, v7, :cond_14

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/h1;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/h1;->isInvalid()Z

    move-result v14

    if-nez v14, :cond_13

    invoke-virtual {v13}, Landroidx/recyclerview/widget/h1;->getLayoutPosition()I

    move-result v14

    if-ne v14, v1, :cond_13

    invoke-virtual {v13}, Landroidx/recyclerview/widget/h1;->isAttachedToTransitionOverlay()Z

    move-result v14

    if-nez v14, :cond_13

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v7, :cond_12

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "getScrapOrHiddenOrCachedHolderForPosition("

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") found match in cache: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object v10, v13

    goto :goto_b

    :cond_13
    add-int/2addr v10, v3

    goto :goto_a

    :cond_14
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_1f

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->isRemoved()Z

    move-result v7

    if-eqz v7, :cond_17

    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v7, :cond_16

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/d1;->g:Z

    if-eqz v7, :cond_15

    goto :goto_c

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "should not receive a removed view unless it is pre layout"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, LV0/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_c
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/d1;->g:Z

    goto :goto_d

    :cond_17
    iget v7, v10, Landroidx/recyclerview/widget/h1;->mPosition:I

    if-ltz v7, :cond_1e

    iget-object v13, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v13

    if-ge v7, v13, :cond_1e

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    iget-boolean v7, v7, Landroidx/recyclerview/widget/d1;->g:Z

    if-nez v7, :cond_19

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    iget v13, v10, Landroidx/recyclerview/widget/h1;->mPosition:I

    invoke-virtual {v7, v13}, Landroidx/recyclerview/widget/u0;->getItemViewType(I)I

    move-result v7

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->getItemViewType()I

    move-result v13

    if-eq v7, v13, :cond_19

    :cond_18
    move v7, v6

    goto :goto_d

    :cond_19
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/u0;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->getItemId()J

    move-result-wide v13

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    iget v15, v10, Landroidx/recyclerview/widget/h1;->mPosition:I

    invoke-virtual {v7, v15}, Landroidx/recyclerview/widget/u0;->getItemId(I)J

    move-result-wide v15

    cmp-long v7, v13, v15

    if-nez v7, :cond_18

    :cond_1a
    move v7, v3

    :goto_d
    if-nez v7, :cond_1d

    const/4 v7, 0x4

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/h1;->addFlags(I)V

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->isScrap()Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, v10, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v4, v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->unScrap()V

    goto :goto_e

    :cond_1b
    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->wasReturnedFromScrap()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->clearReturnedFromScrapFlag()V

    :cond_1c
    :goto_e
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/R0;->k(Landroidx/recyclerview/widget/h1;)V

    const/4 v10, 0x0

    goto :goto_f

    :cond_1d
    move v5, v3

    goto :goto_f

    :cond_1e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1}, LV0/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_f
    const-wide/16 v18, 0x0

    const-wide v20, 0x7fffffffffffffffL

    if-nez v10, :cond_37

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    invoke-virtual {v7, v1, v6}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result v7

    if-ltz v7, :cond_36

    iget-object v13, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v13

    if-ge v7, v13, :cond_36

    iget-object v13, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v13, v7}, Landroidx/recyclerview/widget/u0;->getItemViewType(I)I

    move-result v13

    iget-object v14, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/u0;->hasStableIds()Z

    move-result v14

    if-eqz v14, :cond_28

    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/u0;->getItemId(I)J

    move-result-wide v24

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v3

    :goto_10
    if-ltz v10, :cond_22

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/h1;

    invoke-virtual {v14}, Landroidx/recyclerview/widget/h1;->getItemId()J

    move-result-wide v26

    cmp-long v26, v26, v24

    if-nez v26, :cond_21

    invoke-virtual {v14}, Landroidx/recyclerview/widget/h1;->wasReturnedFromScrap()Z

    move-result v26

    if-nez v26, :cond_21

    invoke-virtual {v14}, Landroidx/recyclerview/widget/h1;->getItemViewType()I

    move-result v15

    if-ne v13, v15, :cond_20

    invoke-virtual {v14, v8}, Landroidx/recyclerview/widget/h1;->addFlags(I)V

    invoke-virtual {v14}, Landroidx/recyclerview/widget/h1;->isRemoved()Z

    move-result v8

    if-eqz v8, :cond_26

    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    iget-boolean v8, v8, Landroidx/recyclerview/widget/d1;->g:Z

    if-nez v8, :cond_26

    const/4 v8, 0x2

    const/16 v9, 0xe

    invoke-virtual {v14, v8, v9}, Landroidx/recyclerview/widget/h1;->setFlags(II)V

    goto :goto_12

    :cond_20
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v15, v14, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v4, v15, v6}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v14, v14, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v14

    const/4 v15, 0x0

    iput-object v15, v14, Landroidx/recyclerview/widget/h1;->mScrapContainer:Landroidx/recyclerview/widget/R0;

    iput-boolean v6, v14, Landroidx/recyclerview/widget/h1;->mInChangeScrap:Z

    invoke-virtual {v14}, Landroidx/recyclerview/widget/h1;->clearReturnedFromScrapFlag()V

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/R0;->k(Landroidx/recyclerview/widget/h1;)V

    :cond_21
    add-int/2addr v10, v2

    goto :goto_10

    :cond_22
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_11
    if-ltz v8, :cond_24

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/h1;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->getItemId()J

    move-result-wide v14

    cmp-long v11, v14, v24

    if-nez v11, :cond_25

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->isAttachedToTransitionOverlay()Z

    move-result v11

    if-nez v11, :cond_25

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->getItemViewType()I

    move-result v11

    if-ne v13, v11, :cond_23

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v14, v10

    goto :goto_12

    :cond_23
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/R0;->i(I)V

    :cond_24
    const/4 v14, 0x0

    goto :goto_12

    :cond_25
    add-int/2addr v8, v2

    goto :goto_11

    :cond_26
    :goto_12
    if-eqz v14, :cond_27

    iput v7, v14, Landroidx/recyclerview/widget/h1;->mPosition:I

    move v5, v3

    :cond_27
    move-object v10, v14

    :cond_28
    if-nez v10, :cond_30

    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v7, :cond_29

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tryGetViewHolderForPositionByDeadline("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") fetching from shared pool"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/R0;->d()Landroidx/recyclerview/widget/Q0;

    move-result-object v7

    iget-object v7, v7, Landroidx/recyclerview/widget/Q0;->a:Landroid/util/SparseArray;

    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/P0;

    if-eqz v8, :cond_2e

    iget-object v9, v8, Landroidx/recyclerview/widget/P0;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2e

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v3

    :goto_13
    if-ltz v10, :cond_2e

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_2a

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/h1;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/h1;->isAttachedToTransitionOverlay()Z

    move-result v11

    if-nez v11, :cond_2d

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/h1;

    goto :goto_15

    :cond_2a
    const-string v11, "ViewHolder object null when getRecycledView is in progress. pos= "

    const-string v14, " size="

    invoke-static {v10, v11, v14}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " max= "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v8, Landroidx/recyclerview/widget/P0;->b:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " holder= "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v14, v6

    move v15, v14

    :goto_14
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v14, v6, :cond_2c

    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/P0;

    iget-object v6, v6, Landroidx/recyclerview/widget/P0;->a:Ljava/util/ArrayList;

    if-eqz v6, :cond_2b

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v15, v6

    :cond_2b
    add-int/2addr v14, v3

    goto :goto_14

    :cond_2c
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " scrapHeap= "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    add-int/2addr v10, v2

    const/4 v6, 0x0

    goto :goto_13

    :cond_2e
    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroidx/recyclerview/widget/h1;->resetInternal()V

    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v6, :cond_2f

    iget-object v6, v2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2f

    check-cast v6, Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroidx/recyclerview/widget/R0;->e(Landroid/view/ViewGroup;Z)V

    :cond_2f
    move-object v10, v2

    :cond_30
    if-nez v10, :cond_37

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v6

    cmp-long v2, p2, v20

    if-eqz v2, :cond_33

    iget-object v2, v0, Landroidx/recyclerview/widget/R0;->g:Landroidx/recyclerview/widget/Q0;

    invoke-virtual {v2, v13}, Landroidx/recyclerview/widget/Q0;->b(I)Landroidx/recyclerview/widget/P0;

    move-result-object v2

    iget-wide v8, v2, Landroidx/recyclerview/widget/P0;->c:J

    cmp-long v2, v8, v18

    if-eqz v2, :cond_32

    add-long/2addr v8, v6

    cmp-long v2, v8, p2

    if-gez v2, :cond_31

    goto :goto_16

    :cond_31
    const/4 v2, 0x0

    goto :goto_17

    :cond_32
    :goto_16
    move v2, v3

    :goto_17
    if-nez v2, :cond_33

    const/4 v2, 0x0

    return-object v2

    :cond_33
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v2, v4, v13}, Landroidx/recyclerview/widget/u0;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;

    move-result-object v10

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v2, :cond_34

    iget-object v2, v10, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_34

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v10, Landroidx/recyclerview/widget/h1;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_34
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v8

    iget-object v2, v0, Landroidx/recyclerview/widget/R0;->g:Landroidx/recyclerview/widget/Q0;

    sub-long/2addr v8, v6

    invoke-virtual {v2, v13}, Landroidx/recyclerview/widget/Q0;->b(I)Landroidx/recyclerview/widget/P0;

    move-result-object v2

    iget-wide v6, v2, Landroidx/recyclerview/widget/P0;->c:J

    cmp-long v11, v6, v18

    if-nez v11, :cond_35

    goto :goto_18

    :cond_35
    const-wide/16 v13, 0x4

    div-long/2addr v6, v13

    const-wide/16 v22, 0x3

    mul-long v6, v6, v22

    div-long/2addr v8, v13

    add-long/2addr v8, v6

    :goto_18
    iput-wide v8, v2, Landroidx/recyclerview/widget/P0;->c:J

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    if-eqz v2, :cond_37

    const-string v2, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_36
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Inconsistency detected. Invalid item position "

    const-string v3, "(offset:"

    const-string v5, ").state:"

    invoke-static {v1, v7, v2, v3, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :goto_19
    if-eqz v5, :cond_38

    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/d1;->g:Z

    if-nez v2, :cond_38

    const/16 v2, 0x2000

    invoke-virtual {v10, v2}, Landroidx/recyclerview/widget/h1;->hasAnyOfTheFlags(I)Z

    move-result v6

    if-eqz v6, :cond_38

    const/4 v6, 0x0

    invoke-virtual {v10, v6, v2}, Landroidx/recyclerview/widget/h1;->setFlags(II)V

    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/d1;->j:Z

    if-eqz v2, :cond_38

    invoke-static {v10}, Landroidx/recyclerview/widget/D0;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/h1;)I

    move-result v2

    or-int/lit16 v2, v2, 0x1000

    iget-object v6, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/D0;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v7, v10, v2, v8}, Landroidx/recyclerview/widget/D0;->recordPreLayoutInformation(Landroidx/recyclerview/widget/d1;Landroidx/recyclerview/widget/h1;ILjava/util/List;)Landroidx/recyclerview/widget/C0;

    move-result-object v2

    invoke-virtual {v4, v10, v2}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/C0;)V

    :cond_38
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    iget-boolean v2, v2, Landroidx/recyclerview/widget/d1;->g:Z

    if-eqz v2, :cond_39

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->isBound()Z

    move-result v2

    if-eqz v2, :cond_39

    iput v1, v10, Landroidx/recyclerview/widget/h1;->mPreLayoutPosition:I

    goto :goto_1a

    :cond_39
    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->isBound()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->needsUpdate()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_1b

    :cond_3a
    :goto_1a
    const/4 v7, 0x0

    const/16 v16, 0x0

    goto/16 :goto_22

    :cond_3b
    :goto_1b
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v2, :cond_3d

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_1c

    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1}, LV0/c;->i(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    :goto_1c
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/b;

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v7}, Landroidx/recyclerview/widget/b;->f(II)I

    move-result v2

    const/4 v6, 0x0

    iput-object v6, v10, Landroidx/recyclerview/widget/h1;->mBindingAdapter:Landroidx/recyclerview/widget/u0;

    iput-object v4, v10, Landroidx/recyclerview/widget/h1;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->getItemViewType()I

    move-result v8

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v13

    cmp-long v9, p2, v20

    if-eqz v9, :cond_3f

    iget-object v9, v0, Landroidx/recyclerview/widget/R0;->g:Landroidx/recyclerview/widget/Q0;

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/Q0;->b(I)Landroidx/recyclerview/widget/P0;

    move-result-object v8

    iget-wide v8, v8, Landroidx/recyclerview/widget/P0;->d:J

    cmp-long v11, v8, v18

    if-eqz v11, :cond_3f

    add-long/2addr v8, v13

    cmp-long v8, v8, p2

    if-gez v8, :cond_3e

    goto :goto_1d

    :cond_3e
    move v0, v7

    goto/16 :goto_21

    :cond_3f
    :goto_1d
    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->isTmpDetached()Z

    move-result v8

    if-eqz v8, :cond_40

    iget-object v8, v10, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v8

    if-lez v8, :cond_40

    iget-object v8, v10, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    iget-object v11, v10, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-static {v4, v8, v9, v11}, Landroidx/recyclerview/widget/RecyclerView;->access$6400(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v8, v3

    goto :goto_1e

    :cond_40
    move v8, v7

    :goto_1e
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v9, v10, v2}, Landroidx/recyclerview/widget/u0;->bindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    if-eqz v8, :cond_41

    iget-object v2, v10, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->access$6500(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    :cond_41
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v8

    iget-object v0, v0, Landroidx/recyclerview/widget/R0;->g:Landroidx/recyclerview/widget/Q0;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/h1;->getItemViewType()I

    move-result v2

    sub-long/2addr v8, v13

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/Q0;->b(I)Landroidx/recyclerview/widget/P0;

    move-result-object v0

    iget-wide v13, v0, Landroidx/recyclerview/widget/P0;->d:J

    cmp-long v2, v13, v18

    if-nez v2, :cond_42

    goto :goto_1f

    :cond_42
    const-wide/16 v15, 0x4

    div-long/2addr v13, v15

    const-wide/16 v17, 0x3

    mul-long v13, v13, v17

    div-long/2addr v8, v15

    add-long/2addr v8, v13

    :goto_1f
    iput-wide v8, v0, Landroidx/recyclerview/widget/P0;->d:J

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, v10, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_43
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/j1;

    if-nez v2, :cond_44

    new-instance v2, Landroidx/recyclerview/widget/j1;

    invoke-direct {v2, v4}, Landroidx/recyclerview/widget/j1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/j1;)V

    const-string v2, "attachAccessibilityDelegate: mAccessibilityDelegate is null, so re create"

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/j1;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/j1;->getItemDelegate()Lf1/b;

    move-result-object v2

    instance-of v8, v2, Landroidx/recyclerview/widget/i1;

    if-eqz v8, :cond_47

    move-object v8, v2

    check-cast v8, Landroidx/recyclerview/widget/i1;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lf1/T;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v9

    if-nez v9, :cond_45

    goto :goto_20

    :cond_45
    instance-of v6, v9, Lf1/a;

    if-eqz v6, :cond_46

    check-cast v9, Lf1/a;

    iget-object v6, v9, Lf1/a;->a:Lf1/b;

    goto :goto_20

    :cond_46
    new-instance v6, Lf1/b;

    invoke-direct {v6, v9}, Lf1/b;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    :goto_20
    if-eqz v6, :cond_47

    if-eq v6, v8, :cond_47

    iget-object v8, v8, Landroidx/recyclerview/widget/i1;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v8, v0, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    invoke-static {v0, v2}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    :cond_48
    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/d1;->g:Z

    if-eqz v0, :cond_49

    iput v1, v10, Landroidx/recyclerview/widget/h1;->mPreLayoutPosition:I

    :cond_49
    move v0, v3

    :goto_21
    move/from16 v16, v0

    :goto_22
    iget-object v0, v10, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_4a

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/K0;

    iget-object v1, v10, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    :cond_4a
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/K0;

    iget-object v1, v10, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_23

    :cond_4b
    check-cast v0, Landroidx/recyclerview/widget/K0;

    :goto_23
    iput-object v10, v0, Landroidx/recyclerview/widget/K0;->a:Landroidx/recyclerview/widget/h1;

    if-eqz v5, :cond_4c

    if-eqz v16, :cond_4c

    goto :goto_24

    :cond_4c
    move v3, v7

    :goto_24
    iput-boolean v3, v0, Landroidx/recyclerview/widget/K0;->d:Z

    return-object v10

    :cond_4d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Invalid item position "

    const-string v3, "("

    const-string v5, "). Item count:"

    invoke-static {v1, v1, v2, v3, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/d1;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/d1;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(Landroidx/recyclerview/widget/h1;)V
    .locals 1

    iget-boolean v0, p1, Landroidx/recyclerview/widget/h1;->mInChangeScrap:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/R0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/R0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 p0, 0x0

    iput-object p0, p1, Landroidx/recyclerview/widget/h1;->mScrapContainer:Landroidx/recyclerview/widget/R0;

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/recyclerview/widget/h1;->mInChangeScrap:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->clearReturnedFromScrapFlag()V

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/R0;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/J0;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/J0;->mPrefetchMaxCountObserved:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/R0;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/R0;->f:I

    iget-object v0, p0, Landroidx/recyclerview/widget/R0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/R0;->f:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/R0;->i(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
