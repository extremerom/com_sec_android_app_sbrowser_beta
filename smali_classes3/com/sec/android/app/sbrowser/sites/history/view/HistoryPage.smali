.class public Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;
.super Lcom/sec/android/app/sbrowser/sites/SitesPage;
.source "SourceFile"


# instance fields
.field private mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistoryController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->lambda$updateHistorySearchDataAfterSync$0()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->lambda$getSitesSearchItems$1(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V

    return-void
.end method

.method private synthetic lambda$getSitesSearchItems$1(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateHistorySearchDataAfterSync$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->updateHistorySearchDataAfterSync()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getCurrentTabInformativeSubTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->getCurrentTabInformativeSubTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDndList()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->getDndList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 2

    new-instance v0, LJ8/d;

    const/16 v1, 0x18

    invoke-direct {v0, p0, v1, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isItemsEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->isHistoryListEmpty()Z

    move-result p0

    return p0
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onAppBarHeightChanged(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HistoryPage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onAttach(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUI;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onCancelButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onCancelButtonClicked()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "HistoryPage"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->setViewForNewConfig(Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onCreate()V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onCreateOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDeleteButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onDeleteButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDialogDismissed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onDialogDismissed()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onPause()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onResume()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->setActionModeTitleAlpha(F)V

    return-void
.end method

.method public setHistoryController(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    return-void
.end method

.method public setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    return-void
.end method

.method public setSearchData(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryPage;->mHistoryController:Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiController;->setSearchData(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V

    return-void
.end method

.method public updateHistorySearchDataAfterSync(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/view/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
