.class public Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

.field private mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    return-void
.end method


# virtual methods
.method public getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isSearchResultEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->isSearchResultEmpty()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShowingActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->isShowingActionMode()Z

    move-result p0

    return p0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->setActivity(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->setSitesSearchController(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    check-cast p1, Landroid/app/Activity;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->setActivity(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->setSitesSearchController(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onCtrlAndAKeyPressed()V

    :cond_0
    return-void
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onCtrlAndDKeyPressed()V

    :cond_0
    return-void
.end method

.method public onCtrlAndMKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onCtrlAndMKeyPressed()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onDestroy()V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onEnterPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onEnterPressed()V

    :cond_0
    return-void
.end method

.method public onOffsetChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onOffsetChanged(I)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onResume()V

    return-void
.end method

.method public onShiftPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onShiftPressed(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public processSearchData()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->processSearchData()V

    return-void
.end method

.method public processSearchData(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->processSearchData(Ljava/lang/String;)V

    return-void
.end method

.method public requestFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchView;->mNotificationSearchUi:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchUi;->requestFocus()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
