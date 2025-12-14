.class public Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;
.super Lcom/sec/android/app/sbrowser/common/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# instance fields
.field private mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

.field private mIsFromDexMode:Z

.field private mIsNewIntent:Z

.field private mIsSecretMode:Z

.field private mOpenedFromNotification:Z

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

.field private mShouldClearNotifications:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mShouldClearNotifications:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mIsSecretMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mIsNewIntent:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mIsFromDexMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mOpenedFromNotification:Z

    return-void
.end method

.method private checkCallingIntent(Landroid/content/Intent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "IsFromSAINotification"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mOpenedFromNotification:Z

    new-instance v1, LU0/u;

    invoke-direct {v1, p0}, LU0/u;-><init>(Landroid/content/Context;)V

    iget-object p0, v1, LU0/u;->b:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const v2, 0xf1b93

    invoke-virtual {p0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    const/4 p0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "IsNotification"

    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->lambda$onCreate$0(ZLandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(ZLandroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lm/n;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "878"

    return-object p0
.end method

.method public isLaunchedFromMainMoreMenu()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "IsFromMainMoreMenu"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isOpenedFromNotification()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mOpenedFromNotification:Z

    return p0
.end method

.method public isVoiceSearchAvailable()Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x68

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0, p3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onVoiceSearchResult(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/fragment/app/J;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "pref_night_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "pref_high_contrast_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "share_intent_launch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isShareIntentSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onShareIntentLaunched()V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x579b0daa -> :sswitch_2
        0x2736507f -> :sswitch_1
        0x2c3b6d06 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getFullScreenEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mIsSecretMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f150201

    invoke-virtual {p0, v0}, Lm/n;->setTheme(I)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/r;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/r;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->addListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->checkCallingIntent(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mShouldClearNotifications:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "isFromDesktopMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mIsFromDexMode:Z

    invoke-static {}, Lb1/a;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->l(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/s;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/s;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;)V

    invoke-static {p1, v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->y(Landroid/window/OnBackInvokedDispatcher;Lcom/sec/android/app/sbrowser/download/ui/s;)V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onCreateOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lm/n;->onDestroy()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->removeListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/p;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mIsNewIntent:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->checkCallingIntent(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mShouldClearNotifications:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onPause()V

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mIsNewIntent:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mIsFromDexMode:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper;->clearAppState()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mIsNewIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mIsFromDexMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mOpenedFromNotification:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mIsSecretMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SECRET_MULTI_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarForNightMode(Landroid/content/Context;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->checkForExternallyRemovedDownloads(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->checkForExternallyRemovedDownloads(Z)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mShouldClearNotifications:Z

    if-eqz v2, :cond_2

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/sec/android/app/sbrowser/download/ui/p;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/sec/android/app/sbrowser/download/ui/p;-><init>(ILjava/lang/Object;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mShouldClearNotifications:Z

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper;->updateAppState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setShareIntentSelected(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/p;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isFromDesktopMode"

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public startVoiceRecognitionActivity()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer;->launch(Landroid/app/Activity;Z)V

    return-void
.end method
