.class public Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;
.super Lcom/sec/android/app/sbrowser/sites/SitesPage;
.source "SourceFile"


# instance fields
.field private mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesPage;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->lambda$onAttach$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onAttach$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getBookmarkFolderNavigation()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)V

    return-object v0
.end method

.method private needToHandleOptionMenu()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isMyPlacesWidget()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getBookmarkMap()Lcom/google/common/collect/I;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/I;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabInformativeSubTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentTabInformativeSubTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDndList()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getDndList()Landroidx/recyclerview/widget/RecyclerView;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getSitesSearchItemMap(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method

.method public getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getSitesSearchItems(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V

    return-void
.end method

.method public isItemsEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->isItemsEmpty()Z

    move-result p0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/logging/GateMessage;->printGateMessage(I)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onAppBarHeightChanged(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    new-instance v1, LHa/a;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, p0, p1}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onAttach(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarkViewCallback;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onBackPressed(Z)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setViewForNewConfig(Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->needToHandleOptionMenu()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onCreateOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDeleteButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onDeleteButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onPause()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->needToHandleOptionMenu()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onResume()V

    :cond_0
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public onSecureDataUnlocked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onSecureDataUnlocked()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onViewCreated()V

    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setActionModeTitleAlpha(F)V

    return-void
.end method

.method public setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    return-void
.end method

.method public setSearchData(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkPage;->mShowBookmarksController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setSearchData(Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;)V

    return-void
.end method
