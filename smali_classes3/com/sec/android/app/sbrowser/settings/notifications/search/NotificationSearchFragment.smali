.class public Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    return-void
.end method


# virtual methods
.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b0b80

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public isShowingActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->isShowingActionMode()Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->isShowingActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onBackPressed()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;->setAppBarOffsetChangeCallback(Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onCtrlAndAKeyPressed()V

    return-void
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onCtrlAndDKeyPressed()V

    return-void
.end method

.method public onCtrlAndMKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onCtrlAndMKeyPressed()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onDestroy()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEnterPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onEnterPressed()V

    return-void
.end method

.method public onOffsetChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onOffsetChanged(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->isShowingActionMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->onBackPressed()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onResume()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public onShiftKeyPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onShiftPressed(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mActivity:Landroid/app/Activity;

    const v0, 0x7f140f8f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchFragment;->mNotificationSearchController:Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchController;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
