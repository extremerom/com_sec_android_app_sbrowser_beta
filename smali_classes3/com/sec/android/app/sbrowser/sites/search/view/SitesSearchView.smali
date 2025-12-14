.class public Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchViewDelegate;


# instance fields
.field private mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

.field private mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    return-void
.end method


# virtual methods
.method public callNotifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->callNotifyDataSetChanged()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public exitSearchActionMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->exitSearchActionMode()V

    return-void
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->getSelectedSearchItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public isShowingActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->isShowingActionMode()Z

    move-result p0

    return p0
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->onAppBarHeightChanged(I)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    check-cast p1, Landroid/app/Activity;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->setActivity(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchController:Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->setSitesSearchController(Lcom/sec/android/app/sbrowser/sites/search/model/SitesSearchControllerDelegate;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDeleteButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->onDeleteButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public processSearchData(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->processSearchData(ZZ)V

    return-void
.end method

.method public requestFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->requestFocus()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->setActionModeTitleAlpha(F)V

    :cond_0
    return-void
.end method

.method public setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->setSceneAnimation(Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;)V

    return-void
.end method

.method public showSearchKeywordListView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->showSearchKeywordListView()V

    :cond_0
    return-void
.end method

.method public stopScrollOnClear()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchView;->mSitesSearchUi:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchUi;->stopScrollOnClear()V

    return-void
.end method
