.class public Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private final mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

.field private mSecretModeChangeListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

.field private mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->dismissAddToHelper()V

    return-void
.end method

.method private dismissAddToHelper()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/AddToHelper;->dismiss()V

    return-void
.end method

.method private getResumedActivity()Landroid/app/Activity;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isResumedOrResuming(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mActivity:Landroid/app/Activity;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v3

    if-ne v3, v0, :cond_1

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isResumedOrResuming(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private getSecretModeMangerListener()Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;)V

    return-object v0
.end method


# virtual methods
.method public checkUseSecretMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->canUseSecretMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getSecretModeChangeListener()Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeChangeListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    return-object p0
.end method

.method public initSecretMode(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->getSecretModeMangerListener()Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeChangeListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->addListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->updateActivity(Landroid/app/Activity;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->isSecretModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(Z)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setMultiInstanceManagerDelegate(Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;)V

    return-void
.end method

.method public isAuthLockScreenShown()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isAuthLockScreenShown()Z

    move-result p0

    return p0
.end method

.method public isOpenInSecretModeFromOtherApps()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isOpenInSecretModeFromOtherApps()Z

    move-result p0

    return p0
.end method

.method public isOpenInSecretModeRequired()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->canUseSecretMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->shouldOpenInSecretMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isSecretModePreferenceEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isSecretModePreferenceEnabled()Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeChangeListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->removeListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->onDestroy(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    :cond_0
    return-void
.end method

.method public openInSecretMode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->openInSecretMode(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openInSecretModeIfRequired()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/Q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/main_view/Q;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForTabRestore(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openSecretModeForFile()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/Q;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/main_view/Q;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForTabRestore(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runOpenInSecretMode()V
    .locals 2

    const-string v0, "MainViewSecret"

    const-string v1, "[runOpenSecretModeForSecretDownload]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->getResumedActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->toggleSecretMode(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public runOpenInSecretModeIfRequired()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "MainViewSecret"

    const-string v1, "[runOpenInSecretModeIfRequired]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->isOpenInSecretModeRequired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->saveNormalCurrentTab()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->getResumedActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->toggleSecretMode(Landroid/app/Activity;)V

    return-void
.end method

.method public saveNormalCurrentTab()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentIndex(Z)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public setSecretModeEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(Z)V

    return-void
.end method

.method public setSecretModeManager(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    return-void
.end method

.method public shouldOpenLinksInSecretMode(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->isSecretModePreferenceEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->isOpenInSecretModeFromOtherApps()Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const-string p0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const-string p0, "terrace-image-or-link-drag-label"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const-string p0, "com.samsung.intent.extra.OTHER_WINDOW"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public toggleSecretMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isTabRestoring()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->toggleSecretModeWithDelay(Landroid/app/Activity;)V

    return-void
.end method
