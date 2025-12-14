.class public Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private mRecentSearchController:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;->mRecentSearchController:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;->mRecentSearchController:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;->mRecentSearchController:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;->mRecentSearchController:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;->mRecentSearchController:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->onDetach()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;->mRecentSearchController:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;->mRecentSearchController:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public setRecentSearchCallback(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi$RecentSearchCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;->mRecentSearchController:Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchController;->setRecentSearchCallback(Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchUi$RecentSearchCallback;)V

    return-void
.end method
