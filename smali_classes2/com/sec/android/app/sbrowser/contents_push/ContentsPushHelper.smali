.class public Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPushRegistrationInfo:Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;)Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->mPushRegistrationInfo:Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;

    return-object p0
.end method

.method public static areNotificationsEnabled(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, LV0/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance v0, LU0/u;

    invoke-direct {v0, p0}, LU0/u;-><init>(Landroid/content/Context;)V

    iget-object p0, v0, LU0/u;->b:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;
    .locals 4

    const-class v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isContentsPushReady()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isContentsPushSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getInstance()Lcom/sec/android/app/sbrowser/smp/SmpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isContentsPushSupported()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    const-string v1, "ContentsPush2"

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNeedNewBadge()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isContentsPushSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;->isNeedNewBadge()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isContentsPushVisited()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTurnOn()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isContentsPushSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isContentPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static openNotificationSetting(Landroid/app/Activity;Landroidx/activity/result/b;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/activity/result/b;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_request_permission_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->showNotificationSettingsDialog(Landroid/app/Activity;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string p1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-static {p1}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public static setNotificationPermissionRequested()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_request_permission_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static showNotificationSettingsDialog(Landroid/app/Activity;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1501c5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$6;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$6;-><init>()V

    const v2, 0x7f1402c1

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$5;-><init>(Landroid/app/Activity;)V

    const p0, 0x7f140052

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f140838

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public static syncStateIfNeeded(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->syncStateIfNeeded(ZLcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V

    return-void
.end method

.method public static syncStateIfNeeded(ZLcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isContentsPushSupported()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;->onSuccess()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getInstance()Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/contents_push/ContentsPushPreferences;->getServerSyncRegisterState()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getInstance()Lcom/sec/android/app/sbrowser/smp/SmpController;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$1;-><init>(ZZLcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/smp/SmpController;->initialize(Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V

    return-void
.end method


# virtual methods
.method public appUpdated()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->isTurnOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->updateDeviceInfoIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->updateSubsTopicState()V

    :cond_0
    return-void
.end method

.method public deregister()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->mPushRegistrationInfo:Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->deregister(Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->clearHistory()V

    return-void
.end method

.method public getHistories(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->getHistories(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPushReceivedTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->getPushReceivedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPushRegistrationInfo()Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->mPushRegistrationInfo:Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->mPushRegistrationInfo:Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->mPushRegistrationInfo:Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;

    return-object p0
.end method

.method public getPushUserCallback()Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$2;-><init>(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;)V

    return-object v0
.end method

.method public getPushUserCallbackForUpdateSubsTopicState()Lcom/sec/android/app/sbrowser/contents_push/repository/source/PushResponseCallback;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$3;-><init>(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;)V

    return-object v0
.end method

.method public getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object p0

    return-object p0
.end method

.method public getSmpControllerCallback()Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper$4;-><init>(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;)V

    return-object v0
.end method

.method public handlePushOpened(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->setPushOpened(Ljava/lang/String;)V

    return-void
.end method

.method public isEnableTopic()Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushGlobalConfigUtils$Companion;->isEnableTopic()Z

    move-result p0

    return p0
.end method

.method public register()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getInstance()Lcom/sec/android/app/sbrowser/smp/SmpController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getSmpControllerCallback()Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->initialize(Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V

    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application;)V
    .locals 0

    new-instance p0, Lcom/samsung/android/sdk/smp/SmpActivityLifecycleCallbacks;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/SmpActivityLifecycleCallbacks;-><init>()V

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public setRegistrationInfo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->setRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getPushRegistrationInfo()Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;->setFrom(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getPushRegistrationInfo()Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushRegistrationInfo;->setPushId(Ljava/lang/String;)V

    return-void
.end method

.method public storePushInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->addHistory(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateDeviceInfoIfNeeded()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->getRepository()Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;->updateDeviceInfoIfNeeded()V

    return-void
.end method

.method public updateState(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setContentPushEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->logTermsAgreement(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->getInstance()Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;->logMarketingAgreement(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->register()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;->deregister()V

    :goto_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f140d50

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    const-string p1, "On"

    goto :goto_1

    :cond_1
    const-string p1, "Off"

    :goto_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
