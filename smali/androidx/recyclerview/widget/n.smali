.class public final Landroidx/recyclerview/widget/n;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# instance fields
.field public final a:LB0/M;


# direct methods
.method public varargs constructor <init>([Landroidx/recyclerview/widget/u0;)V
    .locals 1

    sget-object v0, Landroidx/recyclerview/widget/m;->b:Landroidx/recyclerview/widget/m;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, LB0/M;

    invoke-direct {v0, p0}, LB0/M;-><init>(Landroidx/recyclerview/widget/n;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    iget-object p1, p1, LB0/M;->h:Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/l;

    sget-object v0, Landroidx/recyclerview/widget/l;->NO_STABLE_IDS:Landroidx/recyclerview/widget/l;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/recyclerview/widget/u0;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    invoke-virtual {p0, p1, p2}, LB0/M;->b(ILandroidx/recyclerview/widget/u0;)Z

    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/u0;)V
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    iget-object v0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, LB0/M;->b(ILandroidx/recyclerview/widget/u0;)Z

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    iget-object p0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/j0;

    iget-object v1, v1, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d(Landroidx/recyclerview/widget/t0;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u0;->setStateRestorationPolicy(Landroidx/recyclerview/widget/t0;)V

    return-void
.end method

.method public final e(Landroidx/recyclerview/widget/u0;)V
    .locals 4

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    invoke-virtual {p0, p1}, LB0/M;->l(Landroidx/recyclerview/widget/u0;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/j0;

    invoke-virtual {p0, v2}, LB0/M;->d(Landroidx/recyclerview/widget/j0;)I

    move-result v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v0, v2, Landroidx/recyclerview/widget/j0;->e:I

    iget-object v1, p0, LB0/M;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/n;

    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/u0;->notifyItemRangeRemoved(II)V

    iget-object v0, p0, LB0/M;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/u0;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_2
    iget-object p1, v2, Landroidx/recyclerview/widget/j0;->f:LJ6/m;

    iget-object v0, v2, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/u0;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/w0;)V

    iget-object p1, v2, Landroidx/recyclerview/widget/j0;->a:Lo3/i;

    iget-object v0, p1, Lo3/i;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/F1;

    iget-object v0, v0, Landroidx/recyclerview/widget/F1;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/j0;

    iget-object v3, p1, Lo3/i;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/j0;

    if-ne v2, v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, LB0/M;->c()V

    :goto_2
    return-void
.end method

.method public final findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/u0;Landroidx/recyclerview/widget/h1;I)I
    .locals 4

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    iget-object v0, p0, LB0/M;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/j0;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LB0/M;->d(Landroidx/recyclerview/widget/j0;)I

    move-result p0

    sub-int/2addr p3, p0

    iget-object p0, v0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v0

    if-ltz p3, :cond_1

    if-ge p3, v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/u0;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/u0;Landroidx/recyclerview/widget/h1;I)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Detected inconsistent adapter updates. The local position of the view holder maps to "

    const-string v2, " which is out of bounds for the adapter with size "

    const-string v3, ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:"

    invoke-static {p3, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "adapter:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getItemCount()I
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    iget-object p0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/j0;

    iget v1, v1, Landroidx/recyclerview/widget/j0;->e:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final getItemId(I)J
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    invoke-virtual {p0, p1}, LB0/M;->i(I)LD/b;

    move-result-object p1

    iget-object v0, p1, LD/b;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/j0;

    iget v1, p1, LD/b;->b:I

    iget-object v2, v0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/u0;->getItemId(I)J

    move-result-wide v1

    iget-object v0, v0, Landroidx/recyclerview/widget/j0;->b:Landroidx/recyclerview/widget/s1;

    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/s1;->a(J)J

    move-result-wide v0

    const/4 v2, 0x0

    iput-boolean v2, p1, LD/b;->c:Z

    const/4 v2, 0x0

    iput-object v2, p1, LD/b;->d:Ljava/lang/Object;

    const/4 v2, -0x1

    iput v2, p1, LD/b;->b:I

    iput-object p1, p0, LB0/M;->g:Ljava/lang/Object;

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 6

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    invoke-virtual {p0, p1}, LB0/M;->i(I)LD/b;

    move-result-object p1

    iget-object v0, p1, LD/b;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/j0;

    iget v1, p1, LD/b;->b:I

    iget-object v2, v0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/u0;->getItemViewType(I)I

    move-result v1

    iget-object v0, v0, Landroidx/recyclerview/widget/j0;->a:Lo3/i;

    iget-object v2, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lo3/i;->d:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/F1;

    iget v4, v3, Landroidx/recyclerview/widget/F1;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Landroidx/recyclerview/widget/F1;->b:I

    iget-object v3, v3, Landroidx/recyclerview/widget/F1;->a:Landroid/util/SparseArray;

    iget-object v5, v0, Lo3/i;->c:Ljava/lang/Object;

    check-cast v5, Landroidx/recyclerview/widget/j0;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v0, Lo3/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v4

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p1, LD/b;->c:Z

    const/4 v1, 0x0

    iput-object v1, p1, LD/b;->d:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p1, LD/b;->b:I

    iput-object p1, p0, LB0/M;->g:Ljava/lang/Object;

    return v0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    iget-object v0, p0, LB0/M;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/j0;

    iget-object v0, v0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/u0;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 2

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    invoke-virtual {p0, p2}, LB0/M;->i(I)LD/b;

    move-result-object p2

    iget-object v0, p0, LB0/M;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    iget-object v1, p2, LD/b;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/j0;

    invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, LD/b;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/j0;

    iget v1, p2, LD/b;->b:I

    iget-object v0, v0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/u0;->bindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    const/4 p1, 0x0

    iput-boolean p1, p2, LD/b;->c:Z

    const/4 p1, 0x0

    iput-object p1, p2, LD/b;->d:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p2, LD/b;->b:I

    iput-object p2, p0, LB0/M;->g:Ljava/lang/Object;

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    iget-object p0, p0, LB0/M;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/F1;

    iget-object p0, p0, Landroidx/recyclerview/widget/F1;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/j0;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/j0;->a:Lo3/i;

    iget-object v1, v0, Lo3/i;->b:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p2

    iget-object p0, p0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u0;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "requested global type "

    const-string v1, " does not belong to the adapter:"

    invoke-static {p2, p1, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, v0, Lo3/i;->c:Ljava/lang/Object;

    check-cast p2, Landroidx/recyclerview/widget/j0;

    iget-object p2, p2, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot find the wrapper for global view type "

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    iget-object v0, p0, LB0/M;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object p0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/j0;

    iget-object v0, v0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/u0;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/h1;)Z
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    iget-object v0, p0, LB0/M;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/j0;

    if-eqz v1, :cond_0

    iget-object p0, v1, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->onFailedToRecycleView(Landroidx/recyclerview/widget/h1;)Z

    move-result p0

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find wrapper for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", seems like it is not bound by this adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/h1;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    invoke-virtual {p0, p1}, LB0/M;->j(Landroidx/recyclerview/widget/h1;)Landroidx/recyclerview/widget/j0;

    move-result-object p0

    iget-object p0, p0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->onViewAttachedToWindow(Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/h1;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    invoke-virtual {p0, p1}, LB0/M;->j(Landroidx/recyclerview/widget/h1;)Landroidx/recyclerview/widget/j0;

    move-result-object p0

    iget-object p0, p0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/h1;)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/n;->a:LB0/M;

    iget-object v0, p0, LB0/M;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/j0;

    if-eqz v1, :cond_0

    iget-object p0, v1, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->onViewRecycled(Landroidx/recyclerview/widget/h1;)V

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find wrapper for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", seems like it is not bound by this adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
