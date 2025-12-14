.class public Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineListViewHolder;
.super Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineViewHolder;->getRowView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineViewHolder;->getRowView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapterListener;->onChildClick(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/AddSearchEngineAdapterListener;->onItemLongClick(Landroid/view/View;I)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
