.class public Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;
.super Lcom/sec/android/app/sbrowser/common/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;


# instance fields
.field private mAccountType:I

.field private mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

.field private mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

.field private mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;-><init>()V

    return-void
.end method

.method private createUI()Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;-><init>()V

    return-object p0
.end method

.method private updateFullScreenWindow(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lm/n;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccountType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mAccountType:I

    return p0
.end method

.method public getUi()Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xb4

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    const/4 p3, 0x1

    const-string v0, "TabSyncActivity"

    if-eq p2, p1, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, p3, :cond_1

    const-string p0, "ParentalControl tab sync, onActivityResult etc"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "ParentalControl tab sync, onActivityResult RESULT_FAILED"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "ParentalControl tab sync, onActivityResult RESULT_CANCELED"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "ParentalControl tab sync, onActivityResult RESULT_OK"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "parental_control_sync_agreed"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    if-nez p0, :cond_4

    return-void

    :cond_4
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->turnOnSync()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "[onBackPressed]"

    const-string v1, "TabSyncActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[onBackPressed] disable back to prevent destroy activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->onBackPressed()V

    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0}, Landroidx/fragment/app/J;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TabSyncActivity"

    const-string v1, "onClick: Tab sync item is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->callOnClickListener(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->updateFullScreenWindow(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lm/n;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarForNightMode(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "activity_killed"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "selectedAccount"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mAccountType:I

    :cond_1
    new-instance p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;-><init>(Lm/n;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->createUI()Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncUi:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->setUiToTabSyncController(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityUI;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->setTabSyncDelegate(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->onCreate(Z)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarForNightMode(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-static {}, Lb1/a;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    new-instance v0, Landroidx/activity/x;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroidx/activity/x;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;-><init>(Landroid/window/OnBackInvokedCallback;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->q(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->x(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->onDestroy()V

    invoke-static {}, Lb1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->q(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lj9/b;->j(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    invoke-super {p0}, Lm/n;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->onPause()V

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mTabSyncController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncController;->onResume()V

    const-string v0, "403"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarForNightMode(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarForNightMode(Landroid/content/Context;)V

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/p;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p0, "activity_killed"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAccountType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->mAccountType:I

    return-void
.end method
