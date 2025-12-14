.class public Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modelutil/MVCListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;",
        "Lorg/chromium/ui/modelutil/MVCListAdapter;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final mListData:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

.field private final mViewBuilderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Lorg/chromium/ui/modelutil/MVCListAdapter$ViewBuilder;",
            "Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;",
            ">;>;"
        }
    .end annotation
.end field


# virtual methods
.method public createView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;->mViewBuilderMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ViewBuilder;

    invoke-interface {p0, p1}, Lorg/chromium/ui/modelutil/MVCListAdapter$ViewBuilder;->buildView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;->mListData:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    invoke-virtual {p0}, Lorg/chromium/ui/modelutil/ListModelBase;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;->mListData:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/ListModelBase;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget p0, p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->type:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;->onBindViewHolder(Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;->mListData:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    invoke-virtual {p0, p2}, Lorg/chromium/ui/modelutil/ListModelBase;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget-object p0, p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-virtual {p1, p0}, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;->setModel(Lorg/chromium/ui/modelutil/PropertyModel;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;
    .locals 1

    new-instance v0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;->mViewBuilderMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;

    invoke-direct {v0, p1, p0}, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;)V

    return-object v0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/h1;)V
    .locals 0

    check-cast p1, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter;->onViewRecycled(Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/chromium/ui/modelutil/SimpleRecyclerViewAdapter$ViewHolder;->setModel(Lorg/chromium/ui/modelutil/PropertyModel;)V

    return-void
.end method
