.class public abstract Lcom/sec/android/app/sbrowser/settings/website/recent_search/WebsiteRecentSearchViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# instance fields
.field private mAdapter:Lcom/sec/android/app/sbrowser/settings/website/recent_search/WebsiteRecentSearchAdapter;

.field mRowView:Landroid/view/View;

.field mSearchItem:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchItem;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/recent_search/WebsiteRecentSearchAdapter;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/WebsiteRecentSearchViewHolder;->mRowView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/WebsiteRecentSearchViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/recent_search/WebsiteRecentSearchAdapter;

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/sec/android/app/sbrowser/settings/website/recent_search/WebsiteRecentSearchAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/WebsiteRecentSearchViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/recent_search/WebsiteRecentSearchAdapter;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/WebsiteRecentSearchViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getSearchItem()Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/WebsiteRecentSearchViewHolder;->mSearchItem:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchItem;

    return-object p0
.end method

.method public setSearchItem(Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/recent_search/WebsiteRecentSearchViewHolder;->mSearchItem:Lcom/sec/android/app/sbrowser/settings/website/recent_search/RecentSearchItem;

    return-void
.end method
