.class public Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;
.super Lcom/sec/android/app/sbrowser/common/BaseActivity;
.source "SourceFile"


# instance fields
.field private mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

.field private mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;

.field private mIsPrivacymodeEnabled:Z

.field private mPrevLanguage:Ljava/lang/String;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

.field private mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mIsPrivacymodeEnabled:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity$1;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;

    return-void
.end method

.method private finishIfLanguageChanged()V
    .locals 2

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->finish()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->finishActivity()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    :cond_0
    invoke-virtual {p0}, Lm/n;->invalidateOptionsMenu()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mIsPrivacymodeEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f150007

    invoke-virtual {p0, v0}, Lm/n;->setTheme(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SECRET_MULTI_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    const-string v0, "language"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mPrevLanguage:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mPrevLanguage:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mSavedInstanceState:Landroid/os/Bundle;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;-><init>(Landroid/app/Activity;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewDelegate;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarForNightMode(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity$2;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;I)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->addListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldUseDarkStatusBar()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    const p1, 0x7f060d8e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    :goto_2
    invoke-static {}, Lb1/a;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->p(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/a;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->z(Landroid/window/OnBackInvokedDispatcher;Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/a;)V

    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->onCreateOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->removeListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mEasyModeObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$EasyModeObserver;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->onDestroy()V

    invoke-super {p0}, Lm/n;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->onPause()V

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->finishIfLanguageChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mIsPrivacymodeEnabled:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->mAddBookmarkController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroidx/activity/p;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
