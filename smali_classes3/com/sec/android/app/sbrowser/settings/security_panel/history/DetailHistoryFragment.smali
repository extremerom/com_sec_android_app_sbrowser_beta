.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;
.implements Lcom/sec/android/app/sbrowser/settings/security_panel/history/DHWindowEventInterface;


# instance fields
.field private mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    return-void
.end method

.method private isNeedOptionMenu(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string p1, "sbrowser.settings.show_fragment_args"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "key"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "view_all"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "anti_tracking_level"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "anti_tracking_secret_mode_level"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "safe_browsing"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "block_popups"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getNavigateUpID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->getNavigateUpID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {v1, v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->isNeedOptionMenu(Landroid/app/Activity;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCtrlAndAKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onCtrlAndAKeyPressed()V

    return-void
.end method

.method public onCtrlAndDKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onCtrlAndDKeyPressed()V

    return-void
.end method

.method public onCtrlAndMKeyPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onCtrlAndMKeyPressed()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onActionHome()V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onPause()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onResume()V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;->onResume()V

    return-void
.end method

.method public onShiftKeyPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onShiftKeyPressed(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;->mController:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailCommonUiController;->onWindowFocusChanged(Z)V

    return-void
.end method
