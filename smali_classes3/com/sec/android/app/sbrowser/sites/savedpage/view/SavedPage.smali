.class public Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;
.super Lcom/sec/android/app/sbrowser/sites/SitesPage;
.source "SourceFile"


# instance fields
.field private mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->setSavedPageView(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getCurrentTabInformativeSubTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->getCurrentTabInformativeSubTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDndList()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->getDndList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getSitesSearchItemMap(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->getSitesSearchItemMap(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V

    return-void
.end method

.method public isItemsEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->isItemsEmpty()Z

    move-result p0

    return p0
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onAppBarHeightChanged(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->setViewForNewConfig(Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDeleteButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onDeleteButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onDestroyView()V

    return-void
.end method

.method public onDialogDismissed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onDialogDismissed()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onResume()V

    return-void
.end method

.method public onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->setActionModeTitleAlpha(F)V

    return-void
.end method

.method public setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    return-void
.end method

.method public setSearchData(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPage;->mSavedPageController:Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->setSearchData(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V

    return-void
.end method
