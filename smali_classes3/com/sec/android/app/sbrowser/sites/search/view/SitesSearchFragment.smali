.class public Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchDelegate;
.implements Lcom/sec/android/app/sbrowser/sites/model/SitesSearchFragmentDelegate;


# instance fields
.field private mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

.field private mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;-><init>(Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;-><init>(Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->setSitesSearchView(Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;)V

    return-void
.end method


# virtual methods
.method public callNotifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->callNotifyDataSetChanged()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public exitSearchActionMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->exitSearchActionMode()V

    return-void
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedSearchItemList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->getSelectedSearchItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public isShowingActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->isShowingActionMode()Z

    move-result p0

    return p0
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->onAppBarHeightChanged(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDeleteButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->onDeleteButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->onDestroy()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->onResume()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public processSearchData(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->processSearchData(Ljava/lang/String;)V

    return-void
.end method

.method public requestFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->setActionModeTitleAlpha(F)V

    return-void
.end method

.method public setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V

    return-void
.end method

.method public showSearchKeywordListView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->showSearchKeywordListView()V

    return-void
.end method

.method public stopScrollOnClear()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchFragment;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/controller/SitesSearchController;->stopScrollOnClear()V

    return-void
.end method
