.class public Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mOnDeleteKeyListener:Landroid/view/View$OnKeyListener;

.field private mRecentSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

.field private mRecentViewListKeyListener:Landroid/view/View$OnKeyListener;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mOnDeleteKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mRecentViewListKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mRecentSearchList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mViews:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mRecentSearchList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    return-object p0
.end method

.method private getItem(I)Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mRecentSearchList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public deleteSearchItem(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;->deleteAll()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;->deleteItem(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;)V

    :goto_0
    return-void
.end method

.method public getDeleteKeyListener()Landroid/view/View$OnKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mOnDeleteKeyListener:Landroid/view/View$OnKeyListener;

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mRecentSearchList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public getItemKeyListener()Landroid/view/View$OnKeyListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mRecentViewListKeyListener:Landroid/view/View$OnKeyListener;

    return-object p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "878"

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->bindSearchItemView(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p2, 0x7f0e01ea

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;)V

    return-object p2
.end method

.method public sendSALogging(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFocusOnNextView(IZ)Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchViewHolder;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->requestItemFocus()V

    return p0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchItemViewHolder;->requestViewFocus()V

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setRecentSearchList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mRecentSearchList:Ljava/util/ArrayList;

    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/DHRecentSearchAdapter;->mRecentSearchUi:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi;->onSearchQueryUpdated(Ljava/lang/String;)V

    return-void
.end method
