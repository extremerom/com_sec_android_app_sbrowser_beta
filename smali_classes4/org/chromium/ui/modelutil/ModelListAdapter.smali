.class public Lorg/chromium/ui/modelutil/ModelListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modelutil/MVCListAdapter;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mListObserver:Lorg/chromium/ui/modelutil/ListObservable$ListObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/modelutil/ListObservable$ListObserver<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

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


# direct methods
.method public constructor <init>(Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/modelutil/ModelListAdapter;->mViewBuilderMap:Landroid/util/SparseArray;

    iput-object p1, p0, Lorg/chromium/ui/modelutil/ModelListAdapter;->mModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    new-instance v0, Lorg/chromium/ui/modelutil/ModelListAdapter$1;

    invoke-direct {v0, p0}, Lorg/chromium/ui/modelutil/ModelListAdapter$1;-><init>(Lorg/chromium/ui/modelutil/ModelListAdapter;)V

    iput-object v0, p0, Lorg/chromium/ui/modelutil/ModelListAdapter;->mListObserver:Lorg/chromium/ui/modelutil/ListObservable$ListObserver;

    invoke-virtual {p1, v0}, Lorg/chromium/ui/modelutil/ListObservableImpl;->addObserver(Lorg/chromium/ui/modelutil/ListObservable$ListObserver;)V

    return-void
.end method

.method public static bindNewModel(Lorg/chromium/ui/modelutil/PropertyModel;Lorg/chromium/ui/modelutil/PropertyModel;Landroid/view/View;Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/modelutil/PropertyModel;->getAllSetProperties()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/ui/modelutil/PropertyModel;->getAllProperties()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/ui/modelutil/PropertyKey;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v2}, Lorg/chromium/ui/modelutil/PropertyModel;->compareValue(Lorg/chromium/ui/modelutil/PropertyModel;Lorg/chromium/ui/modelutil/PropertyKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p3, p0, p2, v2}, Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;->bind(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public canReuseView(Landroid/view/View;I)Z
    .locals 1

    if-eqz p1, :cond_0

    sget p0, Lorg/chromium/ui/R$id;->view_type:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/ModelListAdapter;->mViewBuilderMap:Landroid/util/SparseArray;

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

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/ModelListAdapter;->mModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    invoke-virtual {p0}, Lorg/chromium/ui/modelutil/ListModelBase;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/ModelListAdapter;->mModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/ListModelBase;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/modelutil/ModelListAdapter;->mModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/ListModelBase;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget p0, p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->type:I

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    sget v0, Lorg/chromium/ui/R$id;->view_mcp:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor;

    invoke-virtual {v0}, Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor;->destroy()V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/ModelListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, v0}, Lorg/chromium/ui/modelutil/ModelListAdapter;->canReuseView(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget p3, Lorg/chromium/ui/R$id;->view_model:I

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/chromium/ui/modelutil/PropertyModel;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p3, v0}, Lorg/chromium/ui/modelutil/ModelListAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p2

    sget p3, Lorg/chromium/ui/R$id;->view_type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p3, 0x0

    :goto_1
    iget-object v0, p0, Lorg/chromium/ui/modelutil/ModelListAdapter;->mModelList:Lorg/chromium/ui/modelutil/MVCListAdapter$ModelList;

    invoke-virtual {v0, p1}, Lorg/chromium/ui/modelutil/ListModelBase;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget-object v0, p1, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    iget-object p0, p0, Lorg/chromium/ui/modelutil/ModelListAdapter;->mViewBuilderMap:Landroid/util/SparseArray;

    iget p1, p1, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->type:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;

    sget p1, Lorg/chromium/ui/R$id;->view_mcp:I

    const/4 v1, 0x0

    invoke-static {v0, p2, p0, v1}, Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor;->create(Lorg/chromium/ui/modelutil/PropertyObservable;Ljava/lang/Object;Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;Z)Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p1, Lorg/chromium/ui/R$id;->view_model:I

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {v0, p3, p2, p0}, Lorg/chromium/ui/modelutil/ModelListAdapter;->bindNewModel(Lorg/chromium/ui/modelutil/PropertyModel;Lorg/chromium/ui/modelutil/PropertyModel;Landroid/view/View;Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;)V

    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/modelutil/ModelListAdapter;->mViewBuilderMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public registerType(ILorg/chromium/ui/modelutil/MVCListAdapter$ViewBuilder;Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Lorg/chromium/ui/modelutil/MVCListAdapter$ViewBuilder<",
            "TT;>;",
            "Lorg/chromium/ui/modelutil/PropertyModelChangeProcessor$ViewBinder<",
            "Lorg/chromium/ui/modelutil/PropertyModel;",
            "TT;",
            "Lorg/chromium/ui/modelutil/PropertyKey;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/modelutil/ModelListAdapter;->mViewBuilderMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
