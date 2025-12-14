.class public Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageViewDelegate;


# instance fields
.field private mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

.field private mSavedpageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedpageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    return-void
.end method

.method private createUi()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;-><init>()V

    return-object p0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->dispatchMoreKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getCurrentTabInformativeSubTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->getCurrentTabInformativeSubTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->getCurrentTabInformativeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDndList()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->getSavedPageListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public handleOnClickForSearchItem(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->handleOnClickForSearchItem(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    return-void
.end method

.method public onAppBarHeightChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onAppBarHeightChanged(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->createUi()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedpageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->setSavedPageController(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    check-cast p1, Lm/n;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDeleteButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onDeleteButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    return-void
.end method

.method public onDialogDismissed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onDialogDismissed()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onResume()V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onSearchDelete(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedpageController:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getContextMenuDelegate()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->setDelegate(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;)V

    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->setActionModeTitleAlpha(F)V

    return-void
.end method

.method public setOptionMenuVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->setOptionMenuVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setViewForNewConfig(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageView;->mSavedPageUi:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageUi;->setViewForNewConfig(Landroid/view/ViewGroup;)V

    return-void
.end method
