.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;
.source "SourceFile"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field mFactory:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;

.field protected final mId:I

.field private mInnerRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mId:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mFactory:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;

    return-void
.end method


# virtual methods
.method public enableHoverPopup(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mInnerRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mInnerRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mInnerRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/h1;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getIconRecyclerLayout()I
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mId:I

    const v1, 0x7f0e059b

    if-ne v0, v1, :cond_0

    const p0, 0x7f0e05a0

    return p0

    :cond_0
    const v1, 0x7f0e04d8

    if-ne v0, v1, :cond_1

    const p0, 0x7f0e04dc

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown layout "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mId:I

    return p0
.end method

.method public getViewHolder(Landroid/view/View;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v6, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mId:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mFactory:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    return-object v6
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of p2, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->bind()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mInnerRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mInnerRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/h1;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    return-void

    :cond_0
    instance-of p2, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->bind(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mInnerRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mInnerRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mInnerRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessInflaterFactory;->setViewModelParams(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    invoke-virtual {p2, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->getIconRecyclerLayout()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->getViewHolder(Landroid/view/View;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mInnerRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-object p1
.end method

.method public onEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEvent;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mInnerRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerView;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerView;->onEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    :cond_1
    return-void
.end method

.method public setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->mInnerRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_0
    return-void
.end method
