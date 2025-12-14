.class public Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

.field private final mLatchForSplash:Ljava/util/concurrent/CountDownLatch;

.field private mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

.field private mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

.field private mPrevDarkMode:Z

.field mPrevDensity:I

.field private mPrevDisplayDeviceType:I

.field private mPrevScreenType:I

.field private mSplashScreenHelper:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mLatchForSplash:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevDarkMode:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevDensity:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevDensity:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->getCurrentDisplayType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevDisplayDeviceType:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->initialize()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->lambda$onConfigurationChanged$2(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->lambda$initialize$0(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->lambda$showParent$1(I)V

    return-void
.end method

.method private checkVersionUpdated(Landroid/content/Context;)V
    .locals 6

    const-string v0, "MainActivityUtil"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "SI version info : currentVersion = "

    const-string v4, " newVersion = "

    const-string v5, " prevVersion = "

    invoke-static {v2, v1, v4, p1, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getPreviousVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->compareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPreviousVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setCurrentVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setShowDialogChooseTabView(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setShowDialogChooseTabView(Z)V

    :goto_0
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "NameNotFoundException"

    :goto_1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private clearCacheIfNeeded(Landroid/content/Context;)V
    .locals 5

    const-string v0, "ClearCacheData"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "NeedClearCacheData"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v4, "Cache"

    invoke-direct {v2, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->deleteFile(Ljava/io/File;)V

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private compareTo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string p0, "\\."

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p1

    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_4

    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_2
    if-ge v2, v3, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    if-le v2, v3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private createSmartProtectChecker()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->getInstance()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil$2;-><init>(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->init(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$Delegate;Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectUIManager;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    return-object p0
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)Lcom/sec/android/app/sbrowser/main_view/MainView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getLaunchingUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.intent.action.WEB_SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getWebSearchUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWebSearchUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "query"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->isInValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method private initialize()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

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

.method private isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method private isNativePage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result p0

    return p0
.end method

.method private isReaderPage()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->isInValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p0

    return p0
.end method

.method private isThemeSupported()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initialize$0(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getLaunchingUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->supportSplashScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->shouldShowSplashScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mSplashScreenHelper:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->prepare()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mLatchForSplash:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$2(Landroid/content/res/Configuration;)V
    .locals 5

    const-string v0, "Set Default UseDesktopUserAgent: "

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevDarkMode:Z

    const-string v3, "MainActivityUtil"

    if-eq v2, v1, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevDarkMode:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->shouldShowFullFTU(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[Legal] FTU is not agreed yet"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->closeOptionsMenu()V

    const-string v1, "[NIGHTMODE] recreate MainActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevDensity:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_7

    const-string v0, "Density has been changed"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevDensity:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->shouldShowFullFTU(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "FTU is not agreed yet"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    :cond_3
    sget p1, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v0, 0x13880

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->getDefaultValueForDisplayDesktopWebSite(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getDesktopWebsiteEnabledForMultiFold()I

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const-string p1, "prepareRecreate"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/MainView;->prepareRecreate()V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->closeOptionsMenu()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v1

    if-nez v1, :cond_a

    :try_start_0
    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->getDisplayDeviceType(Landroid/content/res/Configuration;)I

    move-result p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevDisplayDeviceType:I

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UserAgentUtils;->isAutoSwitchUserAgentForMultiFold(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->SEM_DISPLAY_DEVICE_TYPE_SUB:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne p1, v1, :cond_8

    move v2, v4

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v0, v2, 0x1

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setRequestDesktopSitesEnabled(Z)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_9
    :goto_1
    iput p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevDisplayDeviceType:I
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v3}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private synthetic lambda$showParent$1(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isAuthLockScreenShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    const/4 v1, -0x1

    if-le p1, v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLaunchedFromSplitView()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getParentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eq p1, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {p0, v2}, Lcom/sec/android/app/sbrowser/main_view/MainView;->finishMultiTabStack(Z)V

    :cond_3
    return-void
.end method

.method private shouldSplashScreenSupport(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isNetworkAvailable()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isLandscape()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isUltraPowerSavingMode()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFullScreenEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public closeBlankTabForDownload([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v2

    if-lez v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isSecretModeEnabled()Z

    move-result v3

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p1, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByUrl(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isInitialNavigation()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "about:blank"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    if-lez v1, :cond_4

    aget-object v0, p1, v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v0, v1, -0x1

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "MainActivityUtil"

    const-string p1, "Tab url is different from download url"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-nez v1, :cond_5

    return-void

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public createIntentToBringToFront(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {p0, p1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;->BRING_TAB_TO_FRONT:Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler$TabOpenType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.intent.extra.MEDIA_SESSION_URL"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->addTrustedIntentExtras(Landroid/content/Intent;)V

    return-object p0
.end method

.method public createTabDelegate()Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil$1;-><init>(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-object v0
.end method

.method public getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->isThemeSupported()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getThemeColor()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getThemeColor()I

    move-result p0

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;-><init>(I)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method public hideSplashScreenIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mSplashScreenHelper:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->supportSplashScreen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mSplashScreenHelper:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->hideSplashScreenIfNeeded()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isBrowserAllowedByDPM(Landroid/content/Context;)Z
    .locals 3

    const-string p0, "MainActivityUtil"

    const-string v0, "isBrowserAllowedByDPM() - "

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoDevicePolicyManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/MajoDevicePolicyManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sec/sbrowser/spl/wrapper/MajoDevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onBlockedByDPM(Landroid/content/Context;)V
    .locals 1

    const p0, 0x7f140e67

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LGa/d;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, p0, p1}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->createSmartProtectChecker()V

    return-void
.end method

.method public onPostInflation(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->clearCacheIfNeeded(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->checkVersionUpdated(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider;->updateAllWidgetViews(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->updateSystemSupportNightTheme()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isTurnOn()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->syncStateIfNeeded(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isLeavingDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/download/ApkDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->cancelRunningDownloads()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setResetSecretModeIsProgress(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    invoke-virtual {v0, v1}, Ll2/b;->d(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    return-void
.end method

.method public recreateSnackbar(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;->recraeteSnackbar(J)V

    :cond_0
    return-void
.end method

.method public registerDownloadCompleteReceiver(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    :cond_0
    invoke-static {p1}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mDownloadCompleteBroadcastReceiver:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "download_complete_popup"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Ll2/b;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public resetCachedSettings(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->getCurrentDisplayType(Landroid/content/Context;)I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevScreenType:I

    if-eq v0, p1, :cond_0

    const-string v0, "MainActivityUtil"

    const-string v1, "isChangedScreenType = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->resetCachedSettings()V

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevScreenType:I

    return-void
.end method

.method public setFullScreen(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isFullScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->setFullScreen(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method

.method public setImmersiveMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->setImmersiveMode(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public setMainView(Lcom/sec/android/app/sbrowser/main_view/MainView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    return-void
.end method

.method public setPrevScreenType(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->getCurrentDisplayType(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mPrevScreenType:I

    return-void
.end method

.method public shouldOverrideFullscreenAction()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isGED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result p0

    return p0
.end method

.method public shouldSetNavigationBarColor()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isMainViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->isReaderPage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->isNativePage()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldShowSplashScreen(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->shouldSplashScreenSupport(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showParent(I)V
    .locals 3

    const-string v0, "MainActivityUtil"

    const-string v1, "showParent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LG6/c;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    const-wide/16 p0, 0x320

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showSplashScreenIfNeeded()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mLatchForSplash:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mSplashScreenHelper:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_QUICKACCESS:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mSplashScreenHelper:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->showSplashScreenIfReady()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MainActivityUtil"

    const-string v0, "Fail to show splash"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public storeSplashScreenIfNeeded(Landroid/widget/RelativeLayout;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "internet-native://newtab/"

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setLastUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setLastLocale(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setLastDarkMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mSplashScreenHelper:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->supportSplashScreen()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mSplashScreenHelper:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    check-cast p1, Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->storeSplashScreenIfNeeded(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setLastUrl(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
