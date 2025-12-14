.class Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

.field private final mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

.field private final mUpdateManager:Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->mUpdateManager:Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-static {p4}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->create(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->mInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->onDeferredStartupWithStorage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->onDeferredStartupWithNullStorage(Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->lambda$onDeferredStartupWithNullStorage$0(Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V

    return-void
.end method

.method private synthetic lambda$onDeferredStartupWithNullStorage$0(Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V
    .locals 0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;->isActivityFinishingOrDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->onDeferredStartupWithStorage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V

    return-void
.end method

.method private onDeferredStartupWithNullStorage(Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->id:Ljava/lang/String;

    new-instance v2, Lcom/sec/android/app/sbrowser/webapp/a;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/webapp/a;-><init>(Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->register(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;)V

    return-void
.end method

.method private onDeferredStartupWithStorage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->updateStorage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->mUpdateManager:Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0, p1, p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->updateIfNeeded(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getScope()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->get()Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getWebApkPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TerracePermissionUpdater;->onWebApkLaunch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateStorage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->updateFromShortcutIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->mInfo:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->isLaunchedFromHomescreen()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->setHasBeenLaunched()V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->updateLastUsedTime()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->mUpdateManager:Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->destroy()V

    return-void
.end method
