.class public Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$SInstanceHolder;,
        Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$Observer;
    }
.end annotation


# instance fields
.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictionsMgr:Landroid/content/RestrictionsManager;

.field private mRestrictionsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mObservers:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$1;-><init>(Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mRestrictionsReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->updateRestrictions()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$SInstanceHolder;->a()Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    move-result-object v1
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

.method private registerRestrictionListener(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "registerRestrictionListener"

    const-string v1, "ManagedConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mRestrictionsReceiver:Landroid/content/BroadcastReceiver;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    :goto_0
    const-string p0, "mActivity or mRestrictionsReceiver is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unRegisterRestrictionListener(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "unRegisterRestrictionListener"

    const-string v1, "ManagedConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mRestrictionsReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Receivers not registered"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updateRestrictions()V
    .locals 3

    const-string v0, "updateRestrictions"

    const-string v1, "ManagedConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mRestrictionsMgr:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->getApplicationRestrictions()Landroid/os/Bundle;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mRestrictionsMgr:Landroid/content/RestrictionsManager;

    const-string v2, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {p0, v2}, Landroid/content/RestrictionsManager;->getManifestRestrictions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->onUpdateRestrictions(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p0, "entries null!  nothing to update"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ManagedConfigManager"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->unRegisterRestrictionListener(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mRestrictionsMgr:Landroid/content/RestrictionsManager;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mRestrictionsReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mObservers:Ljava/util/ArrayList;

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "initialize"

    const-string v1, "ManagedConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "context is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "restrictions"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mRestrictionsMgr:Landroid/content/RestrictionsManager;

    if-nez v0, :cond_1

    const-string p0, "myRestrictionsMgr is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->updateRestrictions()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->refreshPolicies()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->registerRestrictionListener(Landroid/content/Context;)V

    return-void
.end method

.method public notifyObservers()V
    .locals 2

    const-string v0, "ManagedConfigManager"

    const-string v1, "notifyObservers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$Observer;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$Observer;->onConfigUpdated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshPolicies()V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/net/TerracePolicyProvider;->refreshPolicies()V

    return-void
.end method

.method public registerObserver(Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$Observer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mObservers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "ManagedConfigManager"

    const-string v1, "registerObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setProxyBypassList(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->isProxyRestrictionUsed()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/net/TerracePolicyProvider;->setProxyBypassList(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setProxyPacUrl(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->isProxyRestrictionUsed()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/net/TerracePolicyProvider;->setProxyPacUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setProxyServer(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->isProxyRestrictionUsed()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/net/TerracePolicyProvider;->setProxyServer(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setProxyType(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->isProxyRestrictionUsed()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/net/TerracePolicyProvider;->setProxyType(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterObserver(Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$Observer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mObservers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "ManagedConfigManager"

    const-string v1, "unRegisterObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
