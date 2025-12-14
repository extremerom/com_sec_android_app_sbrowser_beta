.class public Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;


# instance fields
.field private mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    return-void
.end method


# virtual methods
.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b0820

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "SitesNotificationPage"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->setViewForNewConfig(Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onCreate(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onCreateOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onCtrlAndAKeyPressed()V

    return-void
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onCtrlAndDKeyPressed()V

    return-void
.end method

.method public onCtrlAndFKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onCtrlAndFKeyPressed()V

    return-void
.end method

.method public onCtrlAndMKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onCtrlAndMKeyPressed()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onActionHome()V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onPause()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onResume()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onSearchKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onSearchKeyPressed()V

    return-void
.end method

.method public onShiftKeyPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onShiftKeyPressed(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f140f88

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onStop()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;->mNotificationController:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationUiController;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
