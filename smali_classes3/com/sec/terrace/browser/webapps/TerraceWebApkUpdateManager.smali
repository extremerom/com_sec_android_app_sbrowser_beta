.class public Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$WebApkUpdateCallback;,
        Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$Natives;
    }
.end annotation


# instance fields
.field private mFetcher:Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;

.field private mInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

.field private mStorage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

.field private final mTerrace:Lcom/sec/terrace/Terrace;

.field private mUpdateFailureHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mTerrace:Lcom/sec/terrace/Terrace;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->lambda$buildUpdateRequestAndSchedule$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->lambda$updateIfNeeded$0()V

    return-void
.end method

.method private buildUpdateRequestAndSchedule(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Ljava/lang/String;ZI)V
    .locals 7

    new-instance v6, Lcom/sec/terrace/browser/webapps/a;

    invoke-direct {v6, p0}, Lcom/sec/terrace/browser/webapps/a;-><init>(Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mStorage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->createAndSetUpdateRequestFilePath(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->storeWebApkUpdateRequestToFile(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Ljava/lang/String;ZILorg/chromium/base/Callback;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Ljava/lang/Runnable;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->lambda$updateWhileNotRunning$2(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method private destroyFetcher()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mFetcher:Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mFetcher:Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;

    return-void
.end method

.method private static doesAndroidSupportMaskableIcons()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static findMurmur2HashForUrlIgnoringFragment(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->urlsMatchIgnoringFragments(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isShellApkVersionOutOfDate(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shellApkVersion()I

    move-result p0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_shell_apk_version"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWebApkFastUpdateEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "pref_webapk_fast_update_enable"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$buildUpdateRequestAndSchedule$1(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mStorage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->onFinishedUpdate(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;IZ)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->scheduleUpdate()V

    return-void
.end method

.method private synthetic lambda$updateIfNeeded$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->onGotManifestData(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$updateWhileNotRunning$2(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Ljava/lang/Runnable;IZ)V
    .locals 0

    invoke-static {p0, p2, p3}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->onFinishedUpdate(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;IZ)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static needsUpdate(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Ljava/lang/String;)I
    .locals 5

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->isShellApkVersionOutOfDate(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->iconUrlToMurmur2HashMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->iconUrlToMurmur2HashMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->findMurmur2HashForUrlIgnoringFragment(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->scopeUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->scopeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->urlsMatchIgnoringFragments(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->manifestStartUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->manifestStartUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->urlsMatchIgnoringFragments(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shortName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shortName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p0, 0x7

    return p0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const/16 p0, 0x8

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->backgroundColor()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->backgroundColor()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-eqz p2, :cond_7

    const/16 p0, 0x9

    return p0

    :cond_7
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->themeColor()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->themeColor()J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-eqz p2, :cond_8

    const/16 p0, 0xa

    return p0

    :cond_8
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->orientation()I

    move-result p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->orientation()I

    move-result v1

    if-eq p2, v1, :cond_9

    const/16 p0, 0xb

    return p0

    :cond_9
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->displayMode()I

    move-result p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->displayMode()I

    move-result v1

    if-eq p2, v1, :cond_a

    const/16 p0, 0xc

    return p0

    :cond_a
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    const/16 p0, 0xd

    return p0

    :cond_b
    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->doesAndroidSupportMaskableIcons()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->isIconAdaptive()Z

    move-result p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->isIconAdaptive()Z

    move-result v1

    if-eq p2, v1, :cond_c

    const/4 p0, 0x3

    return p0

    :cond_c
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shortcutItems()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shortcutItems()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->shortcutsDiffer(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0xe

    return p0

    :cond_d
    return v0
.end method

.method public static onFinishedUpdate(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;IZ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->recordUpdate(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;IZ)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->deletePendingUpdateRequestFile()V

    return-void
.end method

.method private readVersionCodeFromAndroidManifest(Ljava/lang/String;)I
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p0, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method private static recordUpdate(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->updateTimeOfLastWebApkUpdateRequestCompletion()V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->updateDidLastWebApkUpdateRequestSucceed(Z)V

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->setRelaxedUpdates(Z)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->updateLastRequestedShellApkVersion(I)V

    return-void
.end method

.method private scheduleUpdate()V
    .locals 4

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->isWebApkFastUpdateEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x4e20

    const-wide/16 v2, 0x61a8

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x36ee80

    const-wide/32 v2, 0x4ef6d80

    :goto_0
    const/16 p0, 0x5b

    invoke-static {p0, v0, v1, v2, v3}, Lorg/chromium/components/background_task_scheduler/TaskInfo;->createOneOffTask(IJJ)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setRequiredNetworkType(I)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setUpdateCurrent(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setIsPersisted(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->setRequiresCharging(Z)Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/background_task_scheduler/TaskInfo$Builder;->build()Lorg/chromium/components/background_task_scheduler/TaskInfo;

    move-result-object p0

    invoke-static {}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskSchedulerFactory;->getScheduler()Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/chromium/components/background_task_scheduler/BackgroundTaskScheduler;->schedule(Landroid/content/Context;Lorg/chromium/components/background_task_scheduler/TaskInfo;)Z

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "TerraceWebApkUpdateManager"

    const-string v1, "WebApk update job registered."

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static shortcutsDiffer(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;

    iget-object v3, v3, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;

    iget-object v4, v4, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;

    iget-object v3, v3, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->shortName:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;

    iget-object v4, v4, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->shortName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;

    iget-object v3, v3, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->launchUrl:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;

    iget-object v4, v4, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->launchUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;

    iget-object v3, v3, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->iconHash:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;

    iget-object v4, v4, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->iconHash:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    return v0
.end method

.method private shouldCheckIfWebManifestUpdated(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->isForceUpdatesEnabledForTesting()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->webApkPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->webApkPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".webapk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->isWebApkFastUpdateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->isShellApkVersionOutOfDate(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mStorage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getLastRequestedShellApkVersion()I

    move-result p1

    const/4 v0, 0x7

    if-le v0, p1, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mStorage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->shouldCheckForUpdate()Z

    move-result p0

    return p0
.end method

.method public static updateWhileNotRunning(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TerraceWebApkUpdateManager"

    const-string v2, "WebApk Update now"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/terrace/browser/webapps/c;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/webapps/c;-><init>(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManagerJni;->get()Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$Natives;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getPendingUpdateRequestPath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$Natives;->updateWebApkFromFile(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$WebApkUpdateCallback;)V

    return-void
.end method


# virtual methods
.method public buildFetcher()Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance p0, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;-><init>()V

    return-object p0
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->destroyFetcher()V

    return-void
.end method

.method public getFetcher()Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mFetcher:Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;

    return-object p0
.end method

.method public isForceUpdatesEnabledForTesting()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onGotManifestData(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mStorage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->updateTimeOfLastCheckForUpdatedWebManifest()V

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mUpdateFailureHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->create(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-static {v3, p1, p2}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->needsUpdate(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got Manifest: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "TerraceWebApkUpdateManager"

    invoke-static {v7, v5, v6}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "upgrade needed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v7, v5, v6}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->destroyFetcher()V

    :cond_4
    if-nez v4, :cond_6

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mStorage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->didPreviousUpdateSucceed()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mStorage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-static {p0, v1, v1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->onFinishedUpdate(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;IZ)V

    :cond_5
    return-void

    :cond_6
    iget-object v2, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mStorage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-static {v2, v0, v1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->recordUpdate(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;IZ)V

    if-eqz p1, :cond_7

    invoke-direct {p0, p1, p2, v1, v3}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->buildUpdateRequestAndSchedule(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Ljava/lang/String;ZI)V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    const-string p2, ""

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->buildUpdateRequestAndSchedule(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Ljava/lang/String;ZI)V

    return-void
.end method

.method public storeWebApkUpdateRequestToFile(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Ljava/lang/String;ZILorg/chromium/base/Callback;)V
    .locals 34
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;",
            "Ljava/lang/String;",
            "ZI",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->webApkPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->readVersionCodeFromAndroidManifest(Ljava/lang/String;)I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->iconUrlToMurmur2HashMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    new-array v11, v0, [Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->iconUrlToMurmur2HashMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v10, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    aput-object v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shortcutItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shortcutItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v7, v2, [[B

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shortcutItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shortcutItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;

    iget-object v3, v2, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->shortName:Ljava/lang/String;

    iget-object v5, v2, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->launchUrl:Ljava/lang/String;

    iget-object v6, v2, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->iconUrl:Ljava/lang/String;

    iget-object v8, v2, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->iconHash:Ljava/lang/String;

    filled-new-array {v3, v4, v5, v6, v8}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v2, v2, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras$ShortcutItem;->icon:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->data()[B

    move-result-object v2

    aput-object v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManagerJni;->get()Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$Natives;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->manifestStartUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->scopeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shortName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->icon()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->isIconAdaptive()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->displayMode()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->orientation()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->themeColor()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->backgroundColor()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getParamTitle()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getParamText()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getParamUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->isShareMethodPost()Z

    move-result v22

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->isShareEncTypeMultipart()Z

    move-result v23

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getFileNames()[Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getFileAccepts()[[Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->manifestUrl()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->webApkPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v2, p1

    move-object/from16 v27, v7

    move-object/from16 v7, p3

    move-object/from16 v26, v0

    move/from16 v31, p4

    move/from16 v32, p5

    move-object/from16 v33, p6

    invoke-interface/range {v1 .. v33}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$Natives;->storeWebApkUpdateRequestToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z[Ljava/lang/String;[Ljava/lang/String;IIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[Ljava/lang/Object;[[Ljava/lang/String;[[BLjava/lang/String;Ljava/lang/String;IZILorg/chromium/base/Callback;)V

    return-void
.end method

.method public updateIfNeeded(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V
    .locals 2

    invoke-static {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->create(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mStorage:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    invoke-direct {p0, p2}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->shouldCheckIfWebManifestUpdated(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->buildFetcher()Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mFetcher:Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;

    iget-object p2, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-static {p2}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    invoke-virtual {p1, p2, v0, p0}, Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher;->start(Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;Lcom/sec/terrace/browser/webapps/TinWebApkUpdateDataFetcher$Observer;)Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->mUpdateFailureHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sec/terrace/browser/webapps/b;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/sec/terrace/browser/webapps/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
