.class public Lcom/sec/android/app/sbrowser/tab/TabActivity;
.super Lcom/sec/terrace/TerraceActivity;
.source "SourceFile"


# static fields
.field private static sStorageFullDialog:Lm/l;


# instance fields
.field private mCurrentLocale:Ljava/util/Locale;

.field private mIsDelayNativeInit:Z

.field private mIsFirstDrawn:Z

.field private mIsReadyToInit:Z

.field protected mPictureInPictureController:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

.field protected mSavedInstanceState:Landroid/os/Bundle;

.field private mShowPasswordObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ShowPasswordObserver;

.field protected mStylusWritingCoordinator:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsFirstDrawn:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsReadyToInit:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsDelayNativeInit:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mCurrentLocale:Ljava/util/Locale;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/TabActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity$4;-><init>(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mShowPasswordObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ShowPasswordObserver;

    return-void
.end method

.method private initOnPreDrawListener()V
    .locals 2

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/tab/TabActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/tab/TabActivity$1;-><init>(Lcom/sec/android/app/sbrowser/tab/TabActivity;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private initializeFeaturesForAllActivity()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/init/SBrowserCommandLine;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/init/SBrowserCommandLine;->initialize()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptDialog;->init()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/javascript_dialog/SBrowserJavascriptTabModalDialog;->init()V

    return-void
.end method

.method private initializeNative()V
    .locals 2

    const-string v0, "TabActivity"

    const-string v1, "initializeNative"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->initializeFeaturesForAllActivity()V

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/tab/TabActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity$3;-><init>(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/sec/terrace/TerraceHelper;->initializeAsync(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotEnoughStorage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showStorageFullDialog(Landroid/content/Context;)Lm/l;

    move-result-object p0

    sput-object p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->sStorageFullDialog:Lm/l;

    :cond_0
    :goto_0
    return-void
.end method

.method private killProcessIfLocaleChanged()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "TabActivity"

    const-string v0, "Killing Sbrowser process forcefully on locale change"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private synthetic lambda$onPreInflation$0()V
    .locals 4

    invoke-static {}, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifier;->init()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "enhancedLogLevel"

    const/4 v2, 0x0

    const-string v3, "LoadingFailTracker"

    invoke-virtual {v0, v3, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInt(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifier;->setLoadingFailLogLevel(I)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->lambda$onPreInflation$0()V

    return-void
.end method

.method private onFirstDrawComplete()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/tab/TabActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity$2;-><init>(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/tab/TabActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsDelayNativeInit:Z

    return p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/tab/TabActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsFirstDrawn:Z

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/tab/TabActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsReadyToInit:Z

    return p0
.end method

.method private registerShowPasswordObserver()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowPasswordEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setPasswordEchoEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mShowPasswordObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ShowPasswordObserver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ShowPasswordObserver;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsDelayNativeInit:Z

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsFirstDrawn:Z

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsReadyToInit:Z

    return-void
.end method

.method private unregisterShowPasswordObserver()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mShowPasswordObserver:Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ShowPasswordObserver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$ShowPasswordObserver;)V

    return-void
.end method

.method private updateTerraceDexMode()V
    .locals 2

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportSamsungDesktop()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopModeStandalone()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommandLine Dex Mode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceHelper;->setDexMode(I)V

    :cond_2
    return-void
.end method

.method private updateTerraceDexModeIfReady()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsReadyToInit:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsFirstDrawn:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->updateTerraceDexMode()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "TabActivity"

    const-string v0, "Terrace isn\'t ready to setDexMode"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->initializeNative()V

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onFirstDrawComplete()V

    return-void
.end method


# virtual methods
.method public attemptPictureInPicture()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mPictureInPictureController:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mPictureInPictureController:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mPictureInPictureController:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity$5;-><init>(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->attemptPictureInPicture(Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController$PictureInPictureDelegate;)V

    return-void
.end method

.method public closeBlankTabForDownload([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public enableStylusHandwriting()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mStylusWritingCoordinator:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportSpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mStylusWritingCoordinator:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->addTabManagerEventListener(Landroid/app/Activity;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "TabActivity"

    const-string v0, "Stylus handwriting is not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isWebContentsVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->killProcessIfLocaleChanged()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/terrace/TerraceActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate savedInstanceState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onPreInflation()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->shouldDelayNativeInit()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsDelayNativeInit:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->initializeNative()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->setContentView()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mIsDelayNativeInit:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onPostInflation()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->initOnPreDrawListener()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onDestroy()V

    const-string v0, "TabActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->unregisterShowPasswordObserver()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil;->clearSharedImages(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mStylusWritingCoordinator:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->destroy(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mStylusWritingCoordinator:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->killProcessIfLocaleChanged()V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DialogLifecycleManager;->closeDialog(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->getOrCreateInstance()Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->dismissDialog()V

    return-void
.end method

.method public onNativeInitializationFailure()V
    .locals 2

    const-string v0, "TabActivity"

    const-string v1, "onNativeInitializationFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f14029f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 2

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onNativeInitializationSuccess()V

    const-string v0, "TabActivity"

    const-string v1, "onNativeInitializationSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/init/SBrowserCommandLine;->isCustomFeaturesInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/init/SBrowserCommandLine;->setCustomFeatures()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->enableStylusHandwriting()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isUsa()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "disable-multi-tap-selection"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->updateTerraceDexMode()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->registerShowPasswordObserver()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/utils/BrowserUtil;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/SILog;->initialize()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/SALoggingInitializer;->initialize(Landroid/app/Application;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/terrace/TerraceActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useMemoryPressureListener()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab/MemoryPressureListener;->handleDebugIntent(Landroid/app/Activity;Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/activity/p;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mPictureInPictureController:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPostInflation()V
    .locals 2

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onPostInflation()V

    const-string v0, "TabActivity"

    const-string v1, "onPostInflation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil;->clearSharedImages(Landroid/content/Context;)V

    return-void
.end method

.method public onPreInflation()V
    .locals 4

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onPreInflation()V

    const-string v0, "TabActivity"

    const-string v1, "onPreInflation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->shouldDelayNativeInit()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onResume()V

    const-string v0, "TabActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->getInstance()Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->updateIfNeeded(Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->updateTerraceDexModeIfReady()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onStop()V

    sget-object p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->sStorageFullDialog:Lm/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lm/y;->dismiss()V

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->sStorageFullDialog:Lm/l;

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/p;->onUserLeaveHint()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->attemptPictureInPicture()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/terrace/TerraceActivity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mStylusWritingCoordinator:Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/stylushandwriting/StylusWritingCoordinator;->onWindowFocusChanged(ZLcom/sec/terrace/TerraceActivity;)V

    :cond_0
    const-string p0, "onWindowFocusChanged hasFocus:"

    const-string v0, "TabActivity"

    invoke-static {p0, v0, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setContentView()V
    .locals 1

    const-string p0, "TabActivity"

    const-string v0, "setContentView"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldDelayNativeInit()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
