.class public Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter$AdapterDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

.field private final mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModelProvider;->get(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->viewHolderClickHandler(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->viewHolderLongClickHandler(I)V

    return-void
.end method

.method private viewHolderClickHandler(I)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;->QUICKACCESS:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;->onClick(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    const-string v2, "1055"

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;->onClickEvent(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-ne v1, v3, :cond_1

    const-string v1, "user"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v4, "201"

    const-string v5, "2034"

    invoke-static {v4, v5, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isSecretMode()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isSecretMode()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_3

    const-wide/16 v5, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    :goto_2
    invoke-static {v4, v2, p1, v5, v6}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object p0

    if-eq p0, v3, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getItemId()I

    move-result p1

    const-string v0, "popup"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSILogHelper;->sendClickSILog(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method private viewHolderLongClickHandler(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;->QUICKACCESS:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;

    invoke-interface {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;->onLongClick(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;I)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;->bind(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p2, 0x7f0e05a6

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter$AdapterDelegate;)V

    return-object p2
.end method

.method public onQuickAccessListUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method
