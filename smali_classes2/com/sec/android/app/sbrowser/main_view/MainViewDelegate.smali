.class public Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$Observer;
.implements Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate$TalkBackObserver;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAssistantMenuManager:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;

.field private mContext:Landroid/content/Context;

.field private mExtensionHelper:Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;

.field private mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mTalkBackObserver:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate$TalkBackObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mExtensionHelper:Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAssistantMenuMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->initAssistantMenu()V

    :cond_0
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->lambda$onNativeInitializationSuccess$0()V

    return-void
.end method

.method private addObserver()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->addObserver(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$Observer;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->addObserver(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate$TalkBackObserver;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate$TalkBackObserver;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mTalkBackObserver:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate$TalkBackObserver;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->addSystemSettingsObserver()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->lambda$onNativeInitializationSuccess$1()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-object p0
.end method

.method private getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method private initAssistantMenu()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    check-cast v2, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;-><init>(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager$AssistantMenuManagerListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mAssistantMenuManager:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;

    return-void
.end method

.method private isSettingsActivityOnTop()Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppTask;

    :try_start_0
    invoke-virtual {v2}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTaskId()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IllegalArgumentException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "si__MainViewDelegate"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static synthetic lambda$onNativeInitializationSuccess$0()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->updateMultiInstanceToolbarButtons()V

    return-void
.end method

.method private synthetic lambda$onNativeInitializationSuccess$1()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->prepareIsRequestPinShortcutSupported(Landroid/content/Context;)V

    return-void
.end method

.method private releaseAssistantMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mAssistantMenuManager:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->release()V

    return-void
.end method

.method private removeObserver()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->removeObserver(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager$Observer;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->removeObserver(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mTalkBackObserver:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate$TalkBackObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mTalkBackObserver:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate$TalkBackObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->removeSystemSettingsObserver()V

    return-void
.end method

.method private updateLastDisplayDexMode()V
    .locals 2

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportSamsungDesktop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "last_display"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method


# virtual methods
.method public notifyTabTearingFinished()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->notifyTabTearingFinished()V

    return-void
.end method

.method public onAfterStatusBarChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onAfterStatusBarChanged()V

    return-void
.end method

.method public onBeforeStatusBarChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onBeforeStatusBarChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSettingLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p0

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->setMainScreenWidthDp(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->removeObserver()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->destroy(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->releaseAssistantMenu()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->destroyDialogIfExisted()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchConstants;->isDirectSearchSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;->getsInstance()Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;->unRegisterReceiver()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->removeListenersForInstanceId(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;->getInstance()Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/wechat/WeChatHelper;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mExtensionHelper:Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->onDestroy(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->destroyDialogIfExisted(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->destroy(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->destroy(Landroid/content/Context;)V

    return-void
.end method

.method public onDropEvent(Landroid/view/DragEvent;)Z
    .locals 5
    .param p1    # Landroid/view/DragEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->supportTabTearing(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->notifyTabTearingFinished()V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "content_label"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, "_"

    invoke-direct {v0, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const-string p0, "onDropEvent(): move tab -> (id: "

    const-string v1, ", at last) from instance "

    const-string v4, " to instance "

    invoke-static {v0, p1, p0, v1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "si__MainViewDelegate"

    invoke-static {p0, v3, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p0, -0x1

    invoke-static {p1, v3, v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceUtil;->moveTabToTargetWindow(IIII)V

    :cond_5
    return v2
.end method

.method public onLowMemory()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->clearCache()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/b;->a()V

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->addObserver()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->updateLastDisplayDexMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mExtensionHelper:Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->initialize(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0x13880

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->hasDesktopWindowingOnExternalDisplay(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->menuInflate(Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->updateExtensionMenuItems()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/Y;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/main_view/Y;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->initialize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/appshortcut/LauncherShortcutActivity;->updateDynamicShortcuts(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->isSettingsActivityOnTop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->setMainScreenWidthDp(I)V

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/b;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/main_view/b;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mExtensionHelper:Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->onPause(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper;->clearAppState()V

    return-void
.end method

.method public onPostInflation()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getInstance()Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->initialize(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->updateAssistantMenuIfNecessary()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchConstants;->isDirectSearchSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;->getsInstance()Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/directsearch/DirectSearchReportManager;->reportInstallationIfNeeded()V

    :cond_0
    return-void
.end method

.method public onReaderAnimationCleared(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mExtensionHelper:Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->onReaderAnimationCleared(ZLandroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mExtensionHelper:Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->onResume(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper;->updateAppState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    if-ge p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->clearCache()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/b;->a()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mExtensionHelper:Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->onWindowFocusChanged(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    :cond_0
    return-void
.end method

.method public updateAssistantMenuIfNecessary()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isAssistantMenuMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mAssistantMenuManager:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->initAssistantMenu()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->mAssistantMenuManager:Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/assistant_menu/AssistantMenuManager;->updateAssistantMenuIfNecessary()V

    return-void
.end method
