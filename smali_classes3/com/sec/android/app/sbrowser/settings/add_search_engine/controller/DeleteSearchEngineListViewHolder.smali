.class public Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;
.super Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;

.field private final mKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;)V

    new-instance p1, LFa/e;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p0}, LFa/e;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;->mKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineViewHolder;->getRowView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineViewHolder;->getRowView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineViewHolder;->getRowView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_0

    const/16 p3, 0x3d

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;->setBottombarFocus()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;->onChildClick(Landroid/view/View;I)Z

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

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/SearchEngineBaseAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineAdapterListener;->onItemLongClick(Landroid/view/View;I)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
