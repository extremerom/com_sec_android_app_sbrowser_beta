.class public Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;
.super Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;
.source "SourceFile"


# instance fields
.field private mListener:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getListener()Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineViewHolder;->getRowView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p2, v2, :cond_2

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->mCheckStates:[Z

    aget-boolean v1, v1, p2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->mEngineList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, p2, v1, v2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineViewHolder;->bindData(IZI)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->mCheckStates:[Z

    aget-boolean p1, p1, p2

    invoke-virtual {p0, v0, p2, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->setBackgroundResourceForItems(Landroid/view/View;IZ)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->inflateViewHolder(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;)V

    return-object p2
.end method

.method public setBottombarFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;->setBottombarFocus()Z

    move-result p0

    return p0
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;

    return-void
.end method
