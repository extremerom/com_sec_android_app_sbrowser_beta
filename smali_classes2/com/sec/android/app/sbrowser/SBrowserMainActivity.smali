.class public Lcom/sec/android/app/sbrowser/SBrowserMainActivity;
.super Lcom/sec/android/app/sbrowser/tab/TabActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager$FullScreenActionOverrider;
.implements Lcom/sec/android/app/sbrowser/media/common/IMediaParentImpl;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;
.implements Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;
.implements Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;
.implements Lcom/sec/android/app/sbrowser/common/model/main_activity/IMainActivity;
.implements Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;


# instance fields
.field private mAutofillServiceChangeObserver:Lcom/sec/android/app/sbrowser/autofill/AutofillServiceChangeObserver;

.field private mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

.field private mBackgroundCallerHandler:Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;

.field private mBroadcastReceiverHelper:Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;

.field private mCurrentActionMode:Landroid/view/ActionMode;

.field private mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

.field private mHelpIntroHelper:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;

.field private mIsDelayInflate:Z

.field private mIsFirstDrawSuccess:Z

.field private mIsNativeInitialized:Z

.field private mIsShowOnPhone:Z

.field private mLastUserInteractionTime:J

.field private mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

.field private mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

.field private mParentalControlActivityDelegate:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsShowOnPhone:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsNativeInitialized:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsDelayInflate:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsFirstDrawSuccess:Z

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic B(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->lambda$handleHelpIntroResult$6(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic C(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->lambda$onMainViewCreate$4(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic D(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->lambda$onPreInflation$5()V

    return-void
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mHelpIntroHelper:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;

    return-object p0
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->showSAT()V

    return-void
.end method

.method private getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    if-nez v0, :cond_0

    new-instance v0, LZ3/x;

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v1, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-virtual {v0, v1}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    return-object p0
.end method

.method private inflateMainView()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer;->initialize()V

    const v0, 0x7f0b06cd

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0b06c2

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/main_view/MainView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {v0, p0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->setContentView(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->restoreFromBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private isInValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$attachBaseContext$0(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getClientId warmup : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "si__SBrowserMainActivity"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$handleHelpIntroResult$6(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->reload()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->onDeviceStateChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onMainViewCreate$2(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUIEventDelegate;->onEventReceived(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method private synthetic lambda$onMainViewCreate$3(Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;

    move-result-object p1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->isAgreementNeeded(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->showDialogIfNeeded(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic lambda$onMainViewCreate$4(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->isRemoteConsentRequested()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->launchHelpIntroIfNeeded()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPreInflation$5()V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/TerraceChildProcessLauncher;->warmUpOnAnyThread(Landroid/content/Context;)V

    return-void
.end method

.method private onFirstDrawComplete()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->inflateMainView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onMainViewCreate()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onMainViewStart()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onMainViewResume()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsNativeInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onNativeInitializationSuccess(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsFirstDrawSuccess:Z

    return-void
.end method

.method private onMainViewCreate()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->setMainView(Lcom/sec/android/app/sbrowser/main_view/MainView;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/View;

    sget-object v3, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->registerWindowManagerCallbacks()V

    :cond_0
    new-instance v2, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-direct {v2, p0, v3, p0, p0}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/MainView;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBroadcastReceiverHelper:Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setSaveInstanceState(Z)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->setPrevScreenType(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mParentalControlActivityDelegate:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->setViewModelForPermissionCheck(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity$1;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    invoke-virtual {v2, p0, v3}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->onMainViewCreate(Landroidx/fragment/app/J;Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getUiEvent()Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/e;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/e;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;I)V

    invoke-virtual {v2, p0, v3}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->isGlobalConfigReady()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/e;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/e;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;I)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->isNativeInitialized()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/e;-><init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/AutofillServiceChangeObserver;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/AutofillServiceChangeObserver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mAutofillServiceChangeObserver:Lcom/sec/android/app/sbrowser/autofill/AutofillServiceChangeObserver;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;-><init>(Lm/n;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBackgroundCallerHandler:Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;

    return-void
.end method

.method private onMainViewStart()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->registerDownloadCompleteReceiver(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onStart()V

    return-void
.end method

.method private printPackageInfo()V
    .locals 5

    const-string v0, "si__SBrowserMainActivity"

    const-string v1, "package = ["

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "], versionCode = ["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "NameNotFoundException"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private showSAT()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mHelpIntroHelper:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->showSAT(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic x(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->lambda$onMainViewCreate$2(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic y(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->lambda$attachBaseContext$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic z(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->lambda$onMainViewCreate$3(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->setSaveCountryAvailable()V

    invoke-super {p0, p1}, Lm/n;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->shouldDelayNativeInit()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, LB2/h;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, LB2/h;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public canReopenClosedOldestTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->canReopenClosedOldestTab()Z

    move-result p0

    return p0
.end method

.method public checkInstanceOfSBrowserMainActivity(Landroid/app/Activity;)Z
    .locals 0

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return p0
.end method

.method public closeBlankTabForDownload([Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->closeBlankTabForDownload([Ljava/lang/String;)V

    return-void
.end method

.method public closeOldestTab()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->closeOldestTab()I

    move-result p0

    return p0
.end method

.method public closeOptionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->dismissToolsDialog()V

    :cond_0
    invoke-super {p0}, Lm/n;->closeOptionsMenu()V

    return-void
.end method

.method public closeTabByMaxTabLimit(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainView;->closeTabByMaxTabLimit(I)Z

    move-result p0

    return p0
.end method

.method public createActivityDelegate()Lcom/sec/terrace/TerraceActivityDelegate;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/BaseMainActivityDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/BaseMainActivityDelegate;-><init>(Lcom/sec/terrace/TerraceActivity;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    return-object v0
.end method

.method public createIntentToBringToFront(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->createIntentToBringToFront(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public createNewTab()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->isSecretModeEnabled()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->launchNewTab(Z)V

    :cond_0
    return-void
.end method

.method public dismissTextSizeDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->dismissTextSizeDialog()V

    return-void
.end method

.method public dismissTextSizeDialogInOtherInstance()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getActivityByIndex(I)Landroid/app/Activity;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->dismissTextSizeDialog()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mLastUserInteractionTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const/16 v3, 0x3002

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v3, 0xb

    if-eq p1, v3, :cond_1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mLastUserInteractionTime:J

    :cond_1
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainView;->handleKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lm/n;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainView;->sendTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p4, v0

    const-string v1, "--settings"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/dump/data/DumpData;->getAllSettingsData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/J;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public getContentLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->getContentLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p0

    return-object p0
.end method

.method public getLastUserInteraction()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mLastUserInteractionTime:J

    return-wide v0
.end method

.method public getMainRenderView()Landroid/widget/FrameLayout;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getRenderView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getMoreMenuRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->getMoreMenuRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getOldestTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->getOldestTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getOpenInOtherWindowActivity()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity2;

    return-object p0
.end method

.method public getRemoteConsentType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getRemoteConsentType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object p0

    return-object p0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method public getTerraceActivity()Lcom/sec/terrace/TerraceActivity;
    .locals 0

    return-object p0
.end method

.method public handleHelpIntroResult(I)V
    .locals 2

    const/4 v0, -0x1

    const-string v1, "si__SBrowserMainActivity"

    if-ne p1, v0, :cond_0

    const-string v0, "[Legal] handleHelpIntroResult set main view visible"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->setVisibleMainView()V

    new-instance v0, LGa/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LGa/c;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->handleHelpIntroResult(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "[Legal] helpIntro canceled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->setVisibleMainView()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mHelpIntroHelper:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->handleActivityResult(Landroid/app/Activity;ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void
.end method

.method public hideSplashScreenIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->hideSplashScreenIfNeeded()V

    return-void
.end method

.method public isAddBookmarkAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->isAddBookmarkAvailable()Z

    move-result p0

    return p0
.end method

.method public isBrowserAllowedByDPM()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->isBrowserAllowedByDPM(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isCurrentTabEditMode()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFindOnPageRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isFindOnPageRunning()Z

    move-result p0

    return p0
.end method

.method public isFullScreenForDisplayCutoutMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isFullScreenForDisplayCutoutMode()Z

    move-result p0

    return p0
.end method

.method public isFullScreenMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->isInValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result p0

    return p0
.end method

.method public isHelpIntroRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mHelpIntroHelper:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isLightTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result p0

    return p0
.end method

.method public isMainViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isMainViewShowing()Z

    move-result p0

    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method public isNeedToResizeWindow()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isMainViewShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isNoTabsShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isNoTabsShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isParentalControlLoading()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->isParentalControlLoading()Z

    move-result p0

    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isWebContentsVisible()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->isMainViewShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public launchHelpIntroIfNeeded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->launchHelpIntroIfNeeded()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mHelpIntroHelper:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mHelpIntroHelper:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mHelpIntroHelper:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->launchHelpIntroIfNeeded(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)Z

    move-result p0

    return p0
.end method

.method public notifyIntentHandled(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBackgroundCallerHandler:Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->confirmBackgroundCaller(Landroid/content/Intent;)V

    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/MainView;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->unsetPreLaunchFlag(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onActivityStateChange(Landroid/app/Activity;I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->updateState()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->registerWindowManagerCallbacks()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "onBackPressed"

    const-string v1, "si__SBrowserMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->isExtensionsViewLaunched()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onBackPressed : isExtensionsViewLaunched"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->backPressed()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->exitWebXrSession()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onBlockedByDPM()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->onBlockedByDPM(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onChildAccountChanged()V
    .locals 2

    const-string v0, "si__SBrowserMainActivity"

    const-string v1, "onChildAccountChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->showHelpIntroDialog()V

    return-void
.end method

.method public onClickCancel()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mViewModel:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->endConsent()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConfigurationChanged, smallestScreenWidthDp = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v2, "si__SBrowserMainActivity"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->recreateSnackbar(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->resetCachedSettings(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->onConfigurationChanged()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/terrace/TerraceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->setNavBarVisibility(Landroid/app/Activity;Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->handleConfigurationChanged()V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->shouldDelayNativeInit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsDelayInflate:Z

    const-string v1, "VerificationLog"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ElapsedTime;->setStartTime(Ljava/lang/String;)V

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SBrowserMainActivity.onCreate"

    invoke-static {v1}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "bookmark_show_on_phone"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsShowOnPhone:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x600000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->createTabDelegate()Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    new-instance v2, Lcom/google/firebase/messaging/z;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lm/n;->supportRequestWindowFeature(I)Z

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;-><init>(Landroidx/fragment/app/J;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mParentalControlActivityDelegate:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;

    invoke-static {}, Lb1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    new-instance v2, Landroidx/activity/x;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Landroidx/activity/x;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;-><init>(Landroid/window/OnBackInvokedCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->j(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->x(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "si__SBrowserMainActivity"

    const-string v0, "CMI: onCreate()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->showSplashScreenIfNeeded()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->resetDesktopMode()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsDelayInflate:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onMainViewCreate()V

    :cond_3
    invoke-static {v1}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateTerraceForNewContents(Lcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/Terrace;->initializeWithContext(Landroid/content/Context;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->getNewTabHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTabWithTerrace(Lcom/sec/terrace/Terrace;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBroadcastReceiverHelper:Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->unregisterReceiver()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mAutofillServiceChangeObserver:Lcom/sec/android/app/sbrowser/autofill/AutofillServiceChangeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/autofill/AutofillServiceChangeObserver;->unRegisterObserver()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onDestroy()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsNativeInitialized:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->onDestroyed()LNc/j0;

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->onDestroy()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-static {}, Lb1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->j(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lj9/b;->j(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_4
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onDestroy()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->resetDexSettings()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->unregisterWindowManagerCallbacks()V

    :cond_0
    return-void
.end method

.method public onLocalConsentFailed()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->endConsent()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->launchHelpIntroIfNeeded()Z

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onMainViewResume()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->setFullScreen(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBackgroundCallerHandler:Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->showBackgroundCallerInfoIfRequired()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->printPackageInfo()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->getInstance()Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->checkAndPerformDataMigration(Landroid/content/Context;)V

    return-void
.end method

.method public onMoreMenuClicked()V
    .locals 2

    const-string v0, "onMoreMenuClicked"

    const-string v1, "si__SBrowserMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const-string p0, "onMoreMenuClicked failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->showNoTabsMoreMenu()Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainView;->notifyMultiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onNativeInitializationFailure()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onNativeInitializationFailure()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onNativeInitializationSuccess()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsNativeInitialized:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-interface {v1, v0, v2}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onNativeInitializationSuccess(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->onNativeInitialized()LNc/j0;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->onNativeInitializationSuccess()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mBroadcastReceiverHelper:Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;->registerReceiver()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncSettingUIUtil;->loadPerformancePolicy()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/SBrowserLifetimeController;->init()V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextHelper;->isVisionTextSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/TerraceHelper;->setVisionTextSupport(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->getInstance()Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->checkAndPerformDataMigration(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->onNativeInitializationSuccess()V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/notification/NotificationChannelCreator;->createAllNotificationChannel(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->onNativeInitializationSuccess()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->onResume()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "si__SBrowserMainActivity"

    const-string v1, "CMI: onNewIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onPause()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mCurrentActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onPause()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->onPause()V

    return-void
.end method

.method public onPictureInPictureExit()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mPictureInPictureController:Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/pip/PictureInPictureController;->cleanup()V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->destroyDialogIfExisted()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->onPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/terrace/TerraceActivity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->isBrowserAllowedByDPM()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "si__SBrowserMainActivity"

    const-string v0, "onCreate : Browser is blocked by device policy"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onBlockedByDPM()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->clearFocusUrlBar()V

    :cond_1
    return-void
.end method

.method public onPostInflation()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onPostInflation()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsDelayInflate:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onFirstDrawComplete()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onPostInflation(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->onPostInflation(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->dismissTextSizeDialogInOtherInstance()V

    return-void
.end method

.method public onPreInflation()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onPreInflation()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->shouldDelayNativeInit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LG6/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForAllActivities(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/system_font/SystemFont;->prepareSystemFontSettings(Landroid/content/Context;)V

    return-void
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onProvideAssistContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/assist/AssistContent;->setWebUri(Landroid/net/Uri;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onProvideKeyboardShortcuts(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onReaderButtonClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onReaderButtonClick()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "VerificationLog"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onResume()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsDelayInflate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsFirstDrawSuccess:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onMainViewResume()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bookmark_show_on_phone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsShowOnPhone:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x600000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    :cond_2
    return-void
.end method

.method public onSIXIconUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onSIXIconUpdated()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "si__SBrowserMainActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainView;->setSaveInstanceState(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/p;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->saveToBundle(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onStart()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preconfigured CountryIso: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__SBrowserMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsDelayInflate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsFirstDrawSuccess:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onMainViewStart()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->onStop()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsShowOnPhone:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x600000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onStop()V

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onStop()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->showHelpIntroDialog()V

    return-void
.end method

.method public onTabTearingFinished()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onTabTearingFinished()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/p;->onTrimMemory(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainView;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onUserInteraction()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->isHelpIntroRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mLastUserInteractionTime:J

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->updateAssistantMenuIfNecessary()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->setFocusedInstance(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->setFocusedActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->notifyCurrentTerraceActivityChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->setImmersiveMode()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->handleWindowFocusChanged(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->handleWindowFocusChanged(Z)V

    :cond_2
    return-void
.end method

.method public reopenClosedOldestTab(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainView;->reopenClosedOldestTab(I)I

    move-result p0

    return p0
.end method

.method public resetParentalControl()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->isLoadingStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->isSignedInStatus()Z

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->isMinorInfoStatus()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetParentalControl : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "si__SBrowserMainActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->resetParentalControlPage(ZZ)V

    return-void
.end method

.method public setContentView()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->setContentView()V

    const-string v0, "onCreate->setContentView()"

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    const v1, 0x7f0e080c

    invoke-virtual {p0, v1}, Lm/n;->setContentView(I)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mIsDelayInflate:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->inflateMainView()V

    :cond_0
    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method public setImmersiveMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->setImmersiveMode()V

    return-void
.end method

.method public setInvisibleMainView()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setRunning(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mHelpIntroHelper:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->setRunning(Z)V

    return-void
.end method

.method public setSplitMode(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/TerraceActivity;->onSplitModeChanged(Z)V

    return-void
.end method

.method public setVisibleMainView()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public shouldDelayNativeInit()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isNativePageLastUrl()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isNetworkAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldOverrideFullscreenAction()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->shouldOverrideFullscreenAction()Z

    move-result p0

    return p0
.end method

.method public shouldSetNavigationBarColor()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->shouldSetNavigationBarColor()Z

    move-result p0

    return p0
.end method

.method public showParent(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->showParent(I)V

    return-void
.end method

.method public showRemoteConsentDialog(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->getViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->showRemoteConsentDialog(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V

    return-void
.end method

.method public showZoomInOutPopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->showZoomInOutPopup()V

    return-void
.end method

.method public storeSplashScreenIfNeeded(Landroid/widget/RelativeLayout;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainActivityUtil:Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->storeSplashScreenIfNeeded(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public updateAssistantMenuIfNecessary()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->updateAssistantMenuIfNecessary()V

    :cond_0
    return-void
.end method

.method public updateMultiTabView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->updateMultiTabView()V

    :cond_0
    return-void
.end method

.method public updateToolbarButtons()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->updateToolbarButtons()V

    :cond_0
    return-void
.end method
