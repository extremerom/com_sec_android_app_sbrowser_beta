.class public Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

.field private final mNotificationDbObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

.field private mUnreadNotificationCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mUnreadNotificationCount:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mNotificationDbObservers:Landroid/util/SparseArray;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;)Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mUnreadNotificationCount:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mUnreadNotificationCount:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->isUserInNotificationManager(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->makeNotificationBadgeVisible(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;

    return-object v0
.end method

.method private isMenuItemShowing(Landroid/view/Menu;I)Z
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method private isUserInNotificationManager(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "user_in_notification_manager"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private makeNotificationBadgeVisible(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "show_notification_badge"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private registerNotificationContentObserver(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;

    new-instance v2, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;)V

    invoke-direct {v1, p0, v2, p1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;Landroid/os/Handler;Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mNotificationDbObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterNotificationContentObserver(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mNotificationDbObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mNotificationDbObservers:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "BadgeManager"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->unRegisterNotificationContentObserver(Landroid/app/Activity;)V

    return-void
.end method

.method public getNewExtensionCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->createSimpleClient()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mExtensionsSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->getNewExtensionCount()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getOptionMenuBadgeIdMap(Landroid/app/Activity;Landroid/view/Menu;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x7f0b005d

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->isMenuItemShowing(Landroid/view/Menu;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->getNewExtensionCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const v1, 0x7f0b0073

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->isMenuItemShowing(Landroid/view/Menu;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->createListOfNewFeatures()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->getSettingsBadgeCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const v1, 0x7f0b067b

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->isMenuItemShowing(Landroid/view/Menu;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mUnreadNotificationCount:I

    if-lez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->shouldShowNotificationBadge(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->isUserInNotificationManager(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mUnreadNotificationCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mUnreadNotificationCount:I

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isNotificationsVisited()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->shouldShowNotificationBadge(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->isUserInNotificationManager(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    const v1, 0x7f0b0057

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->isMenuItemShowing(Landroid/view/Menu;I)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->shouldDisplayBadge(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "initialize"

    const-string v1, "BadgeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mNotificationModel:Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationModel;->getUnreadNotificationCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mUnreadNotificationCount:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->registerNotificationContentObserver(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->getInstance()Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;

    move-result-object p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mUnreadNotificationCount:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/NotificationCountListener;->notifyCountChange(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[Notification Manager] Unread Notifications: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/BadgeManager;->mUnreadNotificationCount:I

    invoke-static {p1, p0, v1}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shouldShowNotificationBadge(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "show_notification_badge"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
